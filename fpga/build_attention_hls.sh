#!/bin/bash

# This script builds the HLS optimized attention kernel for FPGA

# Setup environment
echo "Setting up Xilinx environment..."
source /opt/xilinx/Vitis/2022.1/settings64.sh
source /opt/xilinx/xrt/setup.sh

# Enable Developer Toolset for newer compiler
scl enable devtoolset-9 bash

# Create directory structure if needed
mkdir -p ~/llm_hls/fpga
cd ~/llm_hls/fpga

# Build HLS kernel and host
echo "Building HLS attention kernel and host..."
make -f vitis_hls.mk clean
make -f vitis_hls.mk xo
make -f vitis_hls.mk xclbin
make -f vitis_hls.mk host

echo "Build complete."
echo "To test the kernel, run: ./attention_fpga_host attention_kernel.hw.xclbin input_tensor.bin output_tensor.bin"
