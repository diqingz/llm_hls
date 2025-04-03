# Makefile for HLS attention kernel

# Xilinx tools setup
XILINX_VITIS ?= /opt/xilinx/Vitis/2022.1
XILINX_XRT ?= /opt/xilinx/xrt

# Target platform
PLATFORM ?= /opt/xilinx/platforms/xilinx_u250_gen3x16_xdma_4_1_202210_1/xilinx_u250_gen3x16_xdma_4_1_202210_1.xpfm
TARGET ?= hw

# Kernel details
KERNEL_SRC = attention_hls.cpp
KERNEL_NAME = attention_kernel
XO_FILE = $(KERNEL_NAME).$(TARGET).xo
XCLBIN_FILE = $(KERNEL_NAME).$(TARGET).xclbin
CONFIG_FILE = attention_kernel.cfg

# Host code details
HOST_SRC = attention_fpga_host.cpp
HOST_EXE = attention_fpga_host
HOST_CFLAGS = -g -Wall -I$(XILINX_XRT)/include
HOST_LDFLAGS = -L$(XILINX_XRT)/lib -lOpenCL -lpthread -lrt -lstdc++

.PHONY: all clean host xo xclbin

all: host xclbin

# Build host program
host: $(HOST_EXE)

$(HOST_EXE): $(HOST_SRC)
	g++ $(HOST_CFLAGS) $^ -o $@ $(HOST_LDFLAGS)

# Build kernel XO file
xo: $(XO_FILE)

$(XO_FILE): $(KERNEL_SRC)
	v++ -c -t $(TARGET) --platform $(PLATFORM) -k $(KERNEL_NAME) --config $(CONFIG_FILE) -o $@ $^

# Build XCLBIN file
xclbin: $(XCLBIN_FILE)

$(XCLBIN_FILE): $(XO_FILE)
	v++ -l -t $(TARGET) --platform $(PLATFORM) --config $(CONFIG_FILE) -o $@ $^

# Clean all generated files
clean:
	rm -f $(HOST_EXE) $(XO_FILE) $(XCLBIN_FILE) *.log *.o
	rm -rf .Xil _x