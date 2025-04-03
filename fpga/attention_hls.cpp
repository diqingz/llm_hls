#include <ap_int.h>
#include <hls_stream.h>
#include <hls_math.h>

#include <hls_half.h>
// Define constants (adjust based on your model size)
// #define MAX_BATCH 4       // Maximum batch size
// #define MAX_SEQ_LEN 64    // Maximum sequence length
// #define MAX_CHANNELS 768  // Maximum number of channels
// #define MAX_HEADS 12      // Maximum number of heads
// #define HEAD_SIZE (768 / 12)  // Head size

typedef half data_t;
extern "C" {

void attention_kernel(
    float* inp,           // Input tensor for QKV [B][T][3*C]
    float* out,           // Output tensor [B][T][C]
    int B,                // Batch size
    int T,                // Sequence length
    int C,                // Number of channels
    int NH                // Number of heads
) {
    #pragma HLS INTERFACE m_axi port=inp offset=slave bundle=gmem0 max_read_burst_length=256
    #pragma HLS INTERFACE m_axi port=out offset=slave bundle=gmem1 max_read_burst_length=256
    #pragma HLS INTERFACE s_axilite port=inp bundle=control
    #pragma HLS INTERFACE s_axilite port=out bundle=control
    #pragma HLS INTERFACE s_axilite port=B bundle=control
    #pragma HLS INTERFACE s_axilite port=T bundle=control
    #pragma HLS INTERFACE s_axilite port=C bundle=control
    #pragma HLS INTERFACE s_axilite port=NH bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    // Calculate head size and scaling factor
    int hs = C / NH;
    float scale = 1.0f / hls::sqrt(float(hs));
    
    // Local storage for QKV and intermediate results
    float query_buffer[64];
    float key_buffer[64][64];
    float value_buffer[64][64];
    float preatt_scores[64];
    float att_weights[64];
    float out_buffer[64];
    
    // Process each batch and head
    for (int b = 0; b < B; b++) {
        #pragma HLS LOOP_TRIPCOUNT min=1 max=4
        
        for (int h = 0; h < NH; h++) {
            #pragma HLS LOOP_TRIPCOUNT min=1 max=12
            
            // Preload keys and values for this batch and head
            // This optimization avoids repeated memory accesses
            for (int t2 = 0; t2 < T; t2++) {
                #pragma HLS LOOP_TRIPCOUNT min=1 max=64
                
                // Preload key vectors
                for (int i = 0; i < hs; i++) {
                    #pragma HLS PIPELINE II=1
                    float key_float = inp[b*T*3*C + t2*3*C + C + h*hs + i]; // +C offset for key
                    key_buffer[t2][i] = (data_t)key_float; // Convert to half  
		//key_buffer[t2][i] = inp[b*T*3*C + t2*3*C + C + h*hs + i]; // +C offset for key
                }
                
                // Preload value vectors
                for (int i = 0; i < hs; i++) {
                    #pragma HLS PIPELINE II=1
                    float value_float = inp[b*T*3*C + t2*3*C + 2*C + h*hs + i]; // +2*C offset for value
                    value_buffer[t2][i] = (data_t)value_float;
		    //value_buffer[t2][i] = inp[b*T*3*C + t2*3*C + 2*C + h*hs + i]; // +2*C offset for value
                }
            }
                
            // Process each query position
            for (int t = 0; t < T; t++) {
                #pragma HLS LOOP_TRIPCOUNT min=1 max=64
                
                // Load query vector for current position
                for (int i = 0; i < hs; i++) {
                    #pragma HLS PIPELINE II=1
                    //query_buffer[i] = inp[b*T*3*C + t*3*C + h*hs + i]; // query offset
                    float query_float = inp[b*T*3*C + t*3*C + h*hs + i]; // query offset
                    query_buffer[i] = (data_t)query_float; // Convert to half
		}
                
                // Pass 1: Calculate query-key dot products
                float maxval = -10000.0f;
                
                // Find max value for numerical stability and calculate attention scores
                for (int t2 = 0; t2 <= t; t2++) {
                    #pragma HLS LOOP_TRIPCOUNT min=1 max=64
                    #pragma HLS PIPELINE II=1
                    
                    // Calculate dot product between query and key
                    data_t dot_product = (data_t)0.0f;
                    for (int i = 0; i < hs; i++) {
                        #pragma HLS UNROLL factor=8
                        dot_product += query_buffer[i] * key_buffer[t2][i];
                    }
                    
                    // Apply scaling factor
                    data_t score = dot_product * scale;
                    preatt_scores[t2] = score;
                    
                    // Track maximum value for numerical stability
                    if (score > maxval) {
                        maxval = score;
                    }
                }
                
                // Pass 2: Calculate softmax - exp and sum
                data_t expsum = (data_t)0.0f;
                for (int t2 = 0; t2 <= t; t2++) {
                    #pragma HLS LOOP_TRIPCOUNT min=1 max=64
                    #pragma HLS PIPELINE II=1
                    
                    // Apply exp with numerical stability (subtract maxval)
                    data_t expval = hls::exp(preatt_scores[t2] - maxval);
                    att_weights[t2] = expval;
                    expsum += expval;
                }
                
                // Compute inverse sum for normalization
                data_t expsum_inv = (expsum > (data_t)0.0f) ? ((data_t)1.0f / expsum) : (data_t)0.0f;
                
                // Pass 3: Normalize weights and apply causal mask
                for (int t2 = 0; t2 < T; t2++) {
                    #pragma HLS LOOP_TRIPCOUNT min=1 max=64
                    #pragma HLS PIPELINE II=1
                    
                    if (t2 <= t) {
                        att_weights[t2] *= expsum_inv; // Normalize
                    } else {
                        att_weights[t2] = (data_t)0.0f; // Causal mask
                    }
                }
                
                // Initialize output buffer
                for (int i = 0; i < hs; i++) {
                    #pragma HLS PIPELINE II=1
                    out_buffer[i] = (data_t)0.0f;
                }
                
                // Pass 4: Calculate weighted sum of values
                for (int t2 = 0; t2 <= t; t2++) {
                    #pragma HLS LOOP_TRIPCOUNT min=1 max=64
                    
                    data_t weight = att_weights[t2];
                    for (int i = 0; i < hs; i++) {
                        #pragma HLS PIPELINE II=1
                        #pragma HLS UNROLL factor=8
                        out_buffer[i] += weight * value_buffer[t2][i];
                    }
                }
                
                // Write output for this position
                for (int i = 0; i < hs; i++) {
                    #pragma HLS PIPELINE II=1
                    out[b*T*C + t*C + h*hs + i] = (float)out_buffer[i];
                }
            }
        }
    }
}

} // extern "C"
