// #include <ap_int.h>
// #include <hls_stream.h>
// #include <hls_math.h>
//
// #include <hls_half.h>
// // Define constants (adjust based on your model size)
// // #define MAX_BATCH 4       // Maximum batch size
// // #define MAX_SEQ_LEN 64    // Maximum sequence length
// // #define MAX_CHANNELS 768  // Maximum number of channels
// // #define MAX_HEADS 12      // Maximum number of heads
// // #define HEAD_SIZE (768 / 12)  // Head size
//
// typedef half data_t;
// extern "C" {
//
// void attention_kernel(
//     float* inp,           // Input tensor for QKV [B][T][3*C]
//     float* out,           // Output tensor [B][T][C]
//     int B,                // Batch size
//     int T,                // Sequence length
//     int C,                // Number of channels
//     int NH                // Number of heads
// ) {
//     #pragma HLS INTERFACE m_axi port=inp offset=slave bundle=gmem0 max_read_burst_length=256
//     #pragma HLS INTERFACE m_axi port=out offset=slave bundle=gmem1 max_read_burst_length=256
//     #pragma HLS INTERFACE s_axilite port=inp bundle=control
//     #pragma HLS INTERFACE s_axilite port=out bundle=control
//     #pragma HLS INTERFACE s_axilite port=B bundle=control
//     #pragma HLS INTERFACE s_axilite port=T bundle=control
//     #pragma HLS INTERFACE s_axilite port=C bundle=control
//     #pragma HLS INTERFACE s_axilite port=NH bundle=control
//     #pragma HLS INTERFACE s_axilite port=return bundle=control
//
//     // Calculate head size and scaling factor
//     int hs = C / NH;
//     float scale = 1.0f / hls::sqrt(float(hs));
//
//     // Local storage for QKV and intermediate results
//     float query_buffer[64];
//     float key_buffer[64][64];
//     float value_buffer[64][64];
//     float preatt_scores[64];
//     float att_weights[64];
//     float out_buffer[64];
//
//     // Process each batch and head
//     for (int b = 0; b < B; b++) {
//         #pragma HLS LOOP_TRIPCOUNT min=1 max=4
//
//         for (int h = 0; h < NH; h++) {
//             #pragma HLS LOOP_TRIPCOUNT min=1 max=12
//
//             // Preload keys and values for this batch and head
//             // This optimization avoids repeated memory accesses
//             for (int t2 = 0; t2 < T; t2++) {
//                 #pragma HLS LOOP_TRIPCOUNT min=1 max=64
//
//                 // Preload key vectors
//                 for (int i = 0; i < hs; i++) {
//                     #pragma HLS PIPELINE II=1
//                     float key_float = inp[b*T*3*C + t2*3*C + C + h*hs + i]; // +C offset for key
//                     key_buffer[t2][i] = (data_t)key_float; // Convert to half
// 		//key_buffer[t2][i] = inp[b*T*3*C + t2*3*C + C + h*hs + i]; // +C offset for key
//                 }
//
//                 // Preload value vectors
//                 for (int i = 0; i < hs; i++) {
//                     #pragma HLS PIPELINE II=1
//                     float value_float = inp[b*T*3*C + t2*3*C + 2*C + h*hs + i]; // +2*C offset for value
//                     value_buffer[t2][i] = (data_t)value_float;
// 		    //value_buffer[t2][i] = inp[b*T*3*C + t2*3*C + 2*C + h*hs + i]; // +2*C offset for value
//                 }
//             }
//
//             // Process each query position
//             for (int t = 0; t < T; t++) {
//                 #pragma HLS LOOP_TRIPCOUNT min=1 max=64
//
//                 // Load query vector for current position
//                 for (int i = 0; i < hs; i++) {
//                     #pragma HLS PIPELINE II=1
//                     //query_buffer[i] = inp[b*T*3*C + t*3*C + h*hs + i]; // query offset
//                     float query_float = inp[b*T*3*C + t*3*C + h*hs + i]; // query offset
//                     query_buffer[i] = (data_t)query_float; // Convert to half
// 		}
//
//                 // Pass 1: Calculate query-key dot products
//                 float maxval = -10000.0f;
//
//                 // Find max value for numerical stability and calculate attention scores
//                 for (int t2 = 0; t2 <= t; t2++) {
//                     #pragma HLS LOOP_TRIPCOUNT min=1 max=64
//                     #pragma HLS PIPELINE II=1
//
//                     // Calculate dot product between query and key
//                     data_t dot_product = (data_t)0.0f;
//                     for (int i = 0; i < hs; i++) {
//                         #pragma HLS UNROLL factor=8
//                         dot_product += query_buffer[i] * key_buffer[t2][i];
//                     }
//
//                     // Apply scaling factor
//                     data_t score = dot_product * scale;
//                     preatt_scores[t2] = score;
//
//                     // Track maximum value for numerical stability
//                     if (score > maxval) {
//                         maxval = score;
//                     }
//                 }
//
//                 // Pass 2: Calculate softmax - exp and sum
//                 data_t expsum = (data_t)0.0f;
//                 for (int t2 = 0; t2 <= t; t2++) {
//                     #pragma HLS LOOP_TRIPCOUNT min=1 max=64
//                     #pragma HLS PIPELINE II=1
//
//                     // Apply exp with numerical stability (subtract maxval)
//                     data_t expval = hls::exp(preatt_scores[t2] - maxval);
//                     att_weights[t2] = expval;
//                     expsum += expval;
//                 }
//
//                 // Compute inverse sum for normalization
//                 data_t expsum_inv = (expsum > (data_t)0.0f) ? ((data_t)1.0f / expsum) : (data_t)0.0f;
//
//                 // Pass 3: Normalize weights and apply causal mask
//                 for (int t2 = 0; t2 < T; t2++) {
//                     #pragma HLS LOOP_TRIPCOUNT min=1 max=64
//                     #pragma HLS PIPELINE II=1
//
//                     if (t2 <= t) {
//                         att_weights[t2] *= expsum_inv; // Normalize
//                     } else {
//                         att_weights[t2] = (data_t)0.0f; // Causal mask
//                     }
//                 }
//
//                 // Initialize output buffer
//                 for (int i = 0; i < hs; i++) {
//                     #pragma HLS PIPELINE II=1
//                     out_buffer[i] = (data_t)0.0f;
//                 }
//
//                 // Pass 4: Calculate weighted sum of values
//                 for (int t2 = 0; t2 <= t; t2++) {
//                     #pragma HLS LOOP_TRIPCOUNT min=1 max=64
//
//                     data_t weight = att_weights[t2];
//                     for (int i = 0; i < hs; i++) {
//                         #pragma HLS PIPELINE II=1
//                         out_buffer[i] += weight * value_buffer[t2][i];
//                     }
//                 }
//
//                 // Write output for this position
//                 for (int i = 0; i < hs; i++) {
//                     #pragma HLS PIPELINE II=1
//                     out[b*T*C + t*C + h*hs + i] = (float)out_buffer[i];
//                 }
//             }
//         }
//     }
// }
//
// } // extern "C"


#include <ap_int.h>
#include <hls_stream.h>
#include <hls_math.h>
#include <hls_half.h>

extern "C" {

    void extract_qkv(
        float* inp,           // Input tensor for QKV [B][T][3*C]
        hls::stream<float>& query_stream,
        hls::stream<float>& key_stream,
        hls::stream<float>& value_stream,
        int B, int T, int C, int NH
    ) {
        #pragma HLS INTERFACE mode=ap_fifo port=query_stream
        #pragma HLS INTERFACE mode=ap_fifo port=key_stream
        #pragma HLS INTERFACE mode=ap_fifo port=value_stream
        #pragma HLS INTERFACE m_axi port=inp offset=slave bundle=gmem0 depth=4096

        const int hs = C / NH;  // Head size

        // Single pass through input to extract Q, K, V
        for (int b = 0; b < B; b++) {
            #pragma HLS LOOP_TRIPCOUNT min=1 max=4
            for (int h = 0; h < NH; h++) {
                #pragma HLS LOOP_TRIPCOUNT min=1 max=12
                for (int t = 0; t < T; t++) {
                    #pragma HLS LOOP_TRIPCOUNT min=1 max=64
                    #pragma HLS PIPELINE II=1

                    // Extract query
                    for (int i = 0; i < hs; i++) {
                        #pragma HLS UNROLL factor=8
                        float query = inp[b*T*3*C + t*3*C + h*hs + i];
                        query_stream.write(query);
                    }

                    // Extract key
                    for (int i = 0; i < hs; i++) {
                        #pragma HLS UNROLL factor=8
                        float key = inp[b*T*3*C + t*3*C + C + h*hs + i];
                        key_stream.write(key);
                    }

                    // Extract value
                    for (int i = 0; i < hs; i++) {
                        #pragma HLS UNROLL factor=8
                        float value = inp[b*T*3*C + t*3*C + 2*C + h*hs + i];
                        value_stream.write(value);
                    }
                }
            }
        }
    }

//void calculate_scores(
//    hls::stream<float>& query_stream,
//    hls::stream<float>& key_stream,
//    hls::stream<float>& score_stream,
//    int B, int T, int C, int NH
//) {
//    const int hs = C / NH;
//    const float scale = 1.0f / sqrtf(hs);
//
//    // We need to buffer all keys for causal attention
//    float keys[4][12][64][64]; // B, NH, T, hs
//
//    // First collect all keys
//    for (int b = 0; b < B; b++) {
//        for (int h = 0; h < NH; h++) {
//            for (int t = 0; t < T; t++) {
//                for (int i = 0; i < hs; i++) {
//                    #pragma HLS PIPELINE II=1
//                    keys[b][h][t][i] = key_stream.read();
//                }
//            }
//        }
//    }
//
//    //process queries and compute scores
//    for (int b = 0; b < B; b++) {
//        for (int h = 0; h < NH; h++) {
//            for (int t = 0; t < T; t++) {
//                float query[64];
//
//                // Read query
//                for (int i = 0; i < hs; i++) {
//                    #pragma HLS PIPELINE II=1
//                    query[i] = query_stream.read();
//                }
//
//                // Calculate scores with all previous keys (causal mask)
//                for (int t2 = 0; t2 <= t; t2++) {
//                    float score = 0.0f;
//                    for (int i = 0; i < hs; i++) {
////                        #pragma HLS UNROLL factor=8
//                        #pragma HLS UNROLL factor=4
//                        score += query[i] * keys[b][h][t2][i];
//                    }
//                    score *= scale;
//                    score_stream.write(score);
//                }
//            }
//        }
//    }
//}

void calculate_scores(
    hls::stream<float>& query_stream,
    hls::stream<float>& key_stream,
    hls::stream<float>& score_stream,
    int B, int T, int C, int NH
) {
    const int hs = C / NH;
    const float scale = 1.0f / sqrtf(hs);

    // Process one batch, one head at a time to reduce memory requirements
    for (int b = 0; b < B; b++) {
        for (int h = 0; h < NH; h++) {
            // Buffer for storing keys (only one head at a time)
            float keys[64][64]; // T x hs

            // First load all keys for this head
            for (int t = 0; t < T; t++) {
                #pragma HLS PIPELINE II=1
                for (int i = 0; i < hs; i++) {
                    #pragma HLS UNROLL factor=4
                    keys[t][i] = key_stream.read();
                }
            }

            // Now process each query position
            for (int t = 0; t < T; t++) {
                // Read query for current position
                float query[64];
                for (int i = 0; i < hs; i++) {
                    #pragma HLS PIPELINE II=1
                    query[i] = query_stream.read();
                }

                // Calculate scores with causal masking
                for (int t2 = 0; t2 <= t; t2++) {
                    #pragma HLS PIPELINE II=2
                    float score = 0.0f;
                    for (int i = 0; i < hs; i++) {
                        #pragma HLS UNROLL factor=4
                        score += query[i] * keys[t2][i];
                    }
                    score *= scale;

                    // Marker write at the very last score of the kernel
                    if (b == B-1 && h == NH-1 && t == T-1 && t2 == t) {
                                            score_stream.write(9999.0f);
                    } else {
                                            score_stream.write(score);
                                        }

                }
            }
        }
    }
}

//void calculate_scores(
//    hls::stream<float>& query_stream,
//    hls::stream<float>& key_stream,
//    float* out,  // writing directly to memory
//    int B, int T, int C, int NH
//) {
//    const int hs = C / NH;
//    int idx = 0;
//
//    for (int b = 0; b < B; b++) {
//        for (int h = 0; h < NH; h++) {
//            for (int t = 0; t < 1; t++) {  // only do 1 time step
//                for (int i = 0; i < hs; i++) {
//                if (!query_stream.empty() && !key_stream.empty()) {
//                    float q = query_stream.read();
//                    float k = key_stream.read();
//                    float sum = q + k;
//
//                    if (idx < 16) {
//                        out[idx++] = sum;  // Write partial debug info
//                        }
//                    }
//                }
//            }
//        }
//    }
//
//    // ✅ Confirm kernel made it through
//    out[0] = 1234.5f;
//}


void apply_softmax(
    hls::stream<float>& score_stream,
    hls::stream<float>& softmax_stream,
    int B, int T, int C, int NH
) {
    #pragma HLS INTERFACE mode=ap_fifo port=score_stream
    #pragma HLS INTERFACE mode=ap_fifo port=softmax_stream

    for (int b = 0; b < B; b++) {
        for (int h = 0; h < NH; h++) {
            for (int t = 0; t < T; t++) {
                float scores[64];  // Assuming max sequence length
                float maxval = -10000.0f;

                // First pass: find max for numerical stability
                for (int t2 = 0; t2 <= t; t2++) {
                    #pragma HLS PIPELINE II=1
                    scores[t2] = score_stream.read();
                    if (scores[t2] > maxval) {
                        maxval = scores[t2];
                    }
                }

                // Second pass: compute exponentials
                float expsum = 0.0f;
                float expvalues[64];
                for (int t2 = 0; t2 <= t; t2++) {
                    #pragma HLS PIPELINE II=1
                    float expval = expf(scores[t2] - maxval);
                    expvalues[t2] = expval;
                    expsum += expval;
                }

                // Third pass: normalize
                float expsum_inv = (expsum > 0.0f) ? 1.0f / expsum : 0.0f;
                for (int t2 = 0; t2 < T; t2++) {
                    #pragma HLS PIPELINE II=1
                    float norm_weight = (t2 <= t) ? expvalues[t2] * expsum_inv : 0.0f;

                    if (b == B-1 && h == NH-1 && t == T-1 && t2 == T-1) {
                        softmax_stream.write(8888.0f);  // New marker value for softmax completion
                    } else {
                        softmax_stream.write(norm_weight);
                    }
                }

            }
        }
    }
}

void apply_attention(
    float* out,           // Output tensor [B][T][C]
    hls::stream<float>& value_stream,
    hls::stream<float>& softmax_stream,
    int B, int T, int C, int NH
) {
    #pragma HLS INTERFACE mode=ap_fifo port=value_stream
    #pragma HLS INTERFACE mode=ap_fifo port=softmax_stream
    #pragma HLS INTERFACE m_axi port=out offset=slave bundle=gmem1

    int hs = C / NH;  // Head size

    for (int b = 0; b < B; b++) {
        for (int h = 0; h < NH; h++) {
            // Buffer values once per head
            float values[64][64];  // [T][hs]
            #pragma HLS ARRAY_PARTITION variable=values dim=2 factor=8 cyclic

            for (int t2 = 0; t2 < T; t2++) {
                for (int i = 0; i < hs; i++) {
                    #pragma HLS PIPELINE II=1
                    values[t2][i] = value_stream.read();
                }
            }

            for (int t = 0; t < T; t++) {
                float output[64] = {0.0f};

                for (int t2 = 0; t2 <= t; t2++) {
                    float weight = softmax_stream.read();
                    for (int i = 0; i < hs; i++) {
                        #pragma HLS PIPELINE II=1
                        output[i] += weight * values[t2][i];
                    }
                }

                for (int i = 0; i < hs; i++) {
                    #pragma HLS PIPELINE II=1
                    if (b == B-1 && h == NH-1 && t == T-1 && i == hs-1) {
                        out[b*T*C + t*C + h*hs + i] = 7777.0f;  // marker: attention stage done
                    } else {
                        out[b*T*C + t*C + h*hs + i] = output[i];
                    }
                }
            }
        }
    }
}


void drain_score_stream(hls::stream<float>& s, int B, int T, int NH, float* out) {
    int total_scores = B * NH * (T * (T + 1)) / 2;
    for (int i = 0; i < total_scores; ++i) {
        float val = s.read();
        if (val == 9999.0f) {
            out[0] = 1234.5f; // Confirm marker seen and signal host
        }
        volatile float discard = val;
    }
}


void drain_value_stream(hls::stream<float>& s, int B, int T, int C, int NH) {
    int hs = C / NH;
    int total_vals = B * T * NH * hs;
    for (int i = 0; i < total_vals; ++i) {
        volatile float tmp = s.read();
    }
}

void drain_stream(hls::stream<float>& s, int B, int T, int C, int NH) {
    int hs = C / NH;
    int total = B * T * NH * hs;

    for (int i = 0; i < total; ++i) {
        volatile float tmp = s.read();
    }
}

void drain_softmax_stream(hls::stream<float>& s, int B, int T, int C, int NH, float* out) {
    int hs = C / NH;
    int total_vals = B * T * NH * hs;

    for (int i = 0; i < total_vals; ++i) {
        float val = s.read();
        if (val == 8888.0f) {
            out[1] = 8888.0f; // Softmax marker found
        } else {
             out[1] = -888.0f; // Softmax marker missing (kernel may have stalled)
         }
        volatile float discard = val;
    }
}


void attention_kernel(
    float* inp,           // Input tensor for QKV [B][T][3*C]
    float* out,           // Output tensor [B][T][C]
    int B,                // Batch size = 1
    int T,                // Sequence length = 64
    int C,                // Number of channels
    int NH                // Number of heads
) {

//    #pragma HLS INTERFACE m_axi port=inp offset=slave bundle=gmem0 depth=2048
//    #pragma HLS INTERFACE m_axi port=out offset=slave bundle=gmem1 depth=2048
        #pragma HLS INTERFACE m_axi port=inp offset=slave bundle=gmem0 depth=65536
        #pragma HLS INTERFACE m_axi port=out offset=slave bundle=gmem1 depth=65536

    // Scalar interface
    #pragma HLS INTERFACE s_axilite port=B bundle=control
    #pragma HLS INTERFACE s_axilite port=T bundle=control
    #pragma HLS INTERFACE s_axilite port=C bundle=control
    #pragma HLS INTERFACE s_axilite port=NH bundle=control
    #pragma HLS INTERFACE s_axilite port=inp bundle=control
    #pragma HLS INTERFACE s_axilite port=out bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    // Stream declarations with explicit depths
    hls::stream<float> query_stream("query_stream");
    hls::stream<float> key_stream("key_stream");
    hls::stream<float> value_stream("value_stream");
    hls::stream<float> score_stream("score_stream");
    hls::stream<float> softmax_stream("softmax_stream");

    #pragma HLS STREAM variable=query_stream depth=4096
    #pragma HLS STREAM variable=key_stream depth=4096
    #pragma HLS STREAM variable=value_stream depth=4096
    #pragma HLS STREAM variable=score_stream depth=4096
    #pragma HLS STREAM variable=softmax_stream depth=4096

    #pragma HLS DATAFLOW


    // Centralized data extraction
    extract_qkv(inp, query_stream, key_stream, value_stream, B, T, C, NH);

    // Remaining stages
    calculate_scores(query_stream, key_stream, score_stream, B, T, C, NH);
    apply_softmax(score_stream, softmax_stream, B, T, C, NH);
    apply_attention(out, value_stream, softmax_stream, B, T, C, NH);

    //Draining streams
//    drain_score_stream(score_stream, B, T, NH, out);
//    drain_softmax_stream(softmax_stream, B, T, C, NH, out);
//    drain_value_stream(value_stream, B, T, C, NH);


//    drain_stream(query_stream, B, T, C, NH);
//    drain_stream(key_stream, B, T, C, NH);
//    drain_stream(value_stream, B, T, C, NH);
//    if (!marker_seen) {
//        out[0] = -999.0f;  //  Indicates: marker never seen, kernel might have stalled
//    } else {
//        out[0] = 1234.5f;  // Indicates: marker seen, kernel completed successfully
//    }
    //TRY THIS, b4 change--- finished fpga kernel
    //    if (seen) {
//              out[0] = 1234.5f;  // this is outside DATAFLOW, so only one writer to gmem1
//          }
//          // At the end of attention_kernel()
//          if (B > 0 && T > 0 && C > 0 && out[0] != 1234.5f) {
//              out[0] = -999.0f; // fallback value indicating marker was missed
//          }
  }
} // extern "C"