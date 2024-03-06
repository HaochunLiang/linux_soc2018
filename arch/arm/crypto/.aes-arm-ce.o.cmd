cmd_arch/arm/crypto/aes-arm-ce.o := arm-none-eabi-ld -EL  -z noexecstack    -r -o arch/arm/crypto/aes-arm-ce.o arch/arm/crypto/aes-ce-core.o arch/arm/crypto/aes-ce-glue.o 
