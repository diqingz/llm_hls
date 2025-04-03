#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

// OpenCL includes
#include <CL/cl.h>
#include <CL/cl_ext.h>

// Error checking macro
#define OCL_CHECK(error, call)                                                       \
    call;                                                                            \
    if (error != CL_SUCCESS) {                                                       \
        printf("%s:%d Error calling " #call ", error code is: %d\n", __FILE__, __LINE__, error); \
        exit(EXIT_FAILURE);                                                          \
    }

int main(int argc, char* argv[]) {
    if (argc != 4) {
        printf("Usage: %s <xclbin_file> <input_file> <output_file>\n", argv[0]);
        return EXIT_FAILURE;
    }

    // Parse arguments
    const char* xclbin_file = argv[1];
    const char* input_file = argv[2];
    const char* output_file = argv[3];
    
    printf("FPGA Attention: Using XCLBIN: %s\n", xclbin_file);
    printf("FPGA Attention: Input file: %s\n", input_file);
    printf("FPGA Attention: Output file: %s\n", output_file);

    // Read input data
    FILE* fin = fopen(input_file, "rb");
    if (!fin) {
        printf("Error: Could not open input file %s\n", input_file);
        return EXIT_FAILURE;
    }

    // Read dimensions
    int B, T, C, NH;
    size_t read_items;
    
    read_items = fread(&B, sizeof(int), 1, fin);
    if (read_items != 1) { printf("Error reading B\n"); return EXIT_FAILURE; }
    
    read_items = fread(&T, sizeof(int), 1, fin);
    if (read_items != 1) { printf("Error reading T\n"); return EXIT_FAILURE; }
    
    read_items = fread(&C, sizeof(int), 1, fin);
    if (read_items != 1) { printf("Error reading C\n"); return EXIT_FAILURE; }
    
    read_items = fread(&NH, sizeof(int), 1, fin);
    if (read_items != 1) { printf("Error reading NH\n"); return EXIT_FAILURE; }
    
    printf("FPGA Attention: Dimensions B=%d, T=%d, C=%d, NH=%d\n", B, T, C, NH);

    // Calculate sizes
    size_t inp_size = B * T * C * 3; // QKV concatenated
    size_t out_size = B * T * C;     // Output size

    // Allocate memory
    float* inp = (float*)malloc(inp_size * sizeof(float));
    float* out = (float*)malloc(out_size * sizeof(float));

    if (!inp || !out) {
        printf("Error: Memory allocation failed\n");
        return EXIT_FAILURE;
    }

    // Read input data
    read_items = fread(inp, sizeof(float), inp_size, fin);
    if (read_items != inp_size) {
        printf("Error: Failed to read input data (read %zu of %zu floats)\n", read_items, inp_size);
        return EXIT_FAILURE;
    }
    fclose(fin);

    // OpenCL setup
    cl_int err;
    cl_platform_id platform_id;
    cl_device_id device_id;
    cl_context context;
    cl_command_queue command_queue;
    cl_program program;
    cl_kernel kernel;

    // Find platform
    err = clGetPlatformIDs(1, &platform_id, NULL);
    if (err != CL_SUCCESS) {
        printf("Error: Failed to find any OpenCL platforms\n");
        return EXIT_FAILURE;
    }

    // Find device
    err = clGetDeviceIDs(platform_id, CL_DEVICE_TYPE_ACCELERATOR, 1, &device_id, NULL);
    if (err != CL_SUCCESS) {
        printf("Error: Failed to find any OpenCL devices\n");
        return EXIT_FAILURE;
    }

    // Create context
    context = clCreateContext(0, 1, &device_id, NULL, NULL, &err);
    if (!context) {
        printf("Error: Failed to create a compute context\n");
        return EXIT_FAILURE;
    }

    // Create command queue
    command_queue = clCreateCommandQueue(context, device_id, CL_QUEUE_PROFILING_ENABLE, &err);
    if (!command_queue) {
        printf("Error: Failed to create a command queue\n");
        return EXIT_FAILURE;
    }

    // Load XCLBIN
    FILE* fxclbin = fopen(xclbin_file, "rb");
    if (!fxclbin) {
        printf("Error: Failed to open XCLBIN file: %s\n", xclbin_file);
        return EXIT_FAILURE;
    }

    // Get file size
    fseek(fxclbin, 0, SEEK_END);
    size_t xclbin_size = ftell(fxclbin);
    fseek(fxclbin, 0, SEEK_SET);

    // Allocate buffer for xclbin
    char* xclbin_data = (char*)malloc(xclbin_size);
    if (!xclbin_data) {
        printf("Error: Failed to allocate memory for XCLBIN\n");
        return EXIT_FAILURE;
    }

    // Read xclbin
    read_items = fread(xclbin_data, 1, xclbin_size, fxclbin);
    if (read_items != xclbin_size) {
        printf("Error: Failed to read XCLBIN file\n");
        return EXIT_FAILURE;
    }
    fclose(fxclbin);

    // Create program from binary
    program = clCreateProgramWithBinary(context, 1, &device_id, &xclbin_size,
                                        (const unsigned char**)&xclbin_data, NULL, &err);
    if (!program || err != CL_SUCCESS) {
        printf("Error: Failed to create compute program from binary\n");
        return EXIT_FAILURE;
    }

    // Build program
    err = clBuildProgram(program, 0, NULL, NULL, NULL, NULL);
    if (err != CL_SUCCESS) {
        size_t log_size;
        clGetProgramBuildInfo(program, device_id, CL_PROGRAM_BUILD_LOG, 0, NULL, &log_size);
        char* log = (char*)malloc(log_size);
        clGetProgramBuildInfo(program, device_id, CL_PROGRAM_BUILD_LOG, log_size, log, NULL);
        printf("Error: Failed to build program executable!\n%s\n", log);
        free(log);
        return EXIT_FAILURE;
    }

    // Create kernel
    kernel = clCreateKernel(program, "attention_kernel", &err);
    if (!kernel || err != CL_SUCCESS) {
        printf("Error: Failed to create compute kernel\n");
        return EXIT_FAILURE;
    }

    // Create memory buffers
    cl_mem inp_mem = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_USE_HOST_PTR,
                                     inp_size * sizeof(float), inp, &err);
    if (!inp_mem) {
        printf("Error: Failed to allocate input device memory\n");
        return EXIT_FAILURE;
    }

    cl_mem out_mem = clCreateBuffer(context, CL_MEM_WRITE_ONLY | CL_MEM_USE_HOST_PTR,
                                      out_size * sizeof(float), out, &err);
    if (!out_mem) {
        printf("Error: Failed to allocate output device memory\n");
        return EXIT_FAILURE;
    }

    // Set kernel arguments
    err = 0;
    err = clSetKernelArg(kernel, 0, sizeof(cl_mem), &inp_mem);
    err |= clSetKernelArg(kernel, 1, sizeof(cl_mem), &out_mem);
    err |= clSetKernelArg(kernel, 2, sizeof(int), &B);
    err |= clSetKernelArg(kernel, 3, sizeof(int), &T);
    err |= clSetKernelArg(kernel, 4, sizeof(int), &C);
    err |= clSetKernelArg(kernel, 5, sizeof(int), &NH);
    if (err != CL_SUCCESS) {
        printf("Error: Failed to set kernel arguments\n");
        return EXIT_FAILURE;
    }

    // Execute the kernel
    printf("FPGA Attention: Executing kernel...\n");
    
    cl_event kernel_event;
    size_t global_work_size = 1; // This kernel processes all data in a single work-item
    
    // Make sure the input data is transferred to the device
    OCL_CHECK(err, err = clEnqueueMigrateMemObjects(command_queue, 1, &inp_mem, 0, 0, NULL, NULL));
    
    // Execute the kernel
//    OCL_CHECK(err, err = clEnqueueNDRangeKernel(command_queue, kernel, 1, NULL, 
  //                                             &global_work_size, NULL, 0, NULL, &kernel_event));
    
    OCL_CHECK(err, err = clEnqueueTask(command_queue, kernel, 0, NULL, &kernel_event));

    // Wait for the kernel to complete
    OCL_CHECK(err, err = clFinish(command_queue));
    
    // Read the output data back to host memory
    OCL_CHECK(err, err = clEnqueueMigrateMemObjects(command_queue, 1, &out_mem, 
                                                  CL_MIGRATE_MEM_OBJECT_HOST, 0, NULL, NULL));
    OCL_CHECK(err, err = clFinish(command_queue));

    // Calculate kernel execution time
    cl_ulong start_time, end_time;
    clGetEventProfilingInfo(kernel_event, CL_PROFILING_COMMAND_START, sizeof(cl_ulong), &start_time, NULL);
    clGetEventProfilingInfo(kernel_event, CL_PROFILING_COMMAND_END, sizeof(cl_ulong), &end_time, NULL);
    double kernel_time = (end_time - start_time) / 1000000000.0; // Convert to seconds
    printf("FPGA Attention: Kernel execution time: %.3f seconds\n", kernel_time);

    // Write output to file
    FILE* fout = fopen(output_file, "wb");
    if (!fout) {
        printf("Error: Failed to open output file %s\n", output_file);
        return EXIT_FAILURE;
    }
    
    fwrite(out, sizeof(float), out_size, fout);
    fclose(fout);
    
    printf("FPGA Attention: Output written to %s\n", output_file);

    // Clean up
    clReleaseMemObject(inp_mem);
    clReleaseMemObject(out_mem);
    clReleaseProgram(program);
    clReleaseKernel(kernel);
    clReleaseCommandQueue(command_queue);
    clReleaseContext(context);
    clReleaseEvent(kernel_event);
    
    free(inp);
    free(out);
    free(xclbin_data);
    
    printf("FPGA Attention: Complete\n");
    return EXIT_SUCCESS;
}
