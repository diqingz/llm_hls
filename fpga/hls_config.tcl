# Configure HLS synthesis options
config_interface -m_axi_alignment_byte_size 64
config_interface -m_axi_latency 64
config_interface -m_axi_max_widen_bitwidth 512

# Set target clock frequency (adjust as needed for performance)
create_clock -period 5

# Additional optimization directives
config_compile -pipeline_loops 64
config_schedule -enable_dsp_full_reg