cmd_arch/arm/crypto/ghash-arm-ce.o := arm-none-eabi-ld -EL  -z noexecstack    -r -o arch/arm/crypto/ghash-arm-ce.o arch/arm/crypto/ghash-ce-core.o arch/arm/crypto/ghash-ce-glue.o 
