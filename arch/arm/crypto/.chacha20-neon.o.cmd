cmd_arch/arm/crypto/chacha20-neon.o := arm-none-eabi-ld -EL  -z noexecstack    -r -o arch/arm/crypto/chacha20-neon.o arch/arm/crypto/chacha20-neon-core.o arch/arm/crypto/chacha20-neon-glue.o 
