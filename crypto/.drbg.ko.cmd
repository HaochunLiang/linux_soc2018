cmd_crypto/drbg.ko := arm-none-eabi-ld -EL -r  -z noexecstack  -T ./scripts/module-common.lds --build-id  -o crypto/drbg.ko crypto/drbg.o crypto/drbg.mod.o ;  true
