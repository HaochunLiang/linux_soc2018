.section ".rodata..compressed","a",@progbits
.globl z_input_len
z_input_len = 378528
.globl z_output_len
z_output_len = 922872
.globl input_data, input_data_end
input_data:
.incbin "arch/x86/boot/compressed/vmlinux.bin.xz"
input_data_end:
