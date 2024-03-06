cmd_arch/arm/crypto/aes-arm-bs.o := arm-none-eabi-ld -EL  -z noexecstack    -r -o arch/arm/crypto/aes-arm-bs.o arch/arm/crypto/aes-neonbs-core.o arch/arm/crypto/aes-neonbs-glue.o 
