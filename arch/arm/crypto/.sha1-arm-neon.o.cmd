cmd_arch/arm/crypto/sha1-arm-neon.o := arm-none-eabi-ld -EL  -z noexecstack    -r -o arch/arm/crypto/sha1-arm-neon.o arch/arm/crypto/sha1-armv7-neon.o arch/arm/crypto/sha1_neon_glue.o 
