cmd_arch/arm/crypto/aes-arm.o := arm-none-eabi-ld -EL  -z noexecstack    -r -o arch/arm/crypto/aes-arm.o arch/arm/crypto/aes-cipher-core.o arch/arm/crypto/aes-cipher-glue.o 
