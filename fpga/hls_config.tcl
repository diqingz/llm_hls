# =========================
# HLS Configuration Script
# Platform: Xilinx U250 (xilinx_u250_xdma_201830_2)
# Kernel: attention_kernel
# Clock: aclk (300 MHz, mapped as aclk_kernel_01)
# =========================

# AXI Interface Configuration
config_interface -m_axi_alignment_byte_size 64
config_interface -m_axi_latency 64
config_interface -m_axi_max_widen_bitwidth 512

# Clock Configuration
create_clock -name aclk_kernel_01 -period 3.33
# Maps internal HLS kernel clock (aclk_kernel_01) to U250 platform's aclk

# Compile & Schedule Optimizations
config_compile -pipeline_loops 64
config_schedule -enable_dsp_full_reg
