cmd_arch/arm/crypto/sha1-arm-ce.o := arm-none-eabi-ld -EL  -z noexecstack    -r -o arch/arm/crypto/sha1-arm-ce.o arch/arm/crypto/sha1-ce-core.o arch/arm/crypto/sha1-ce-glue.o 
