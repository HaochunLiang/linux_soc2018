cmd_crypto/hmac.ko := arm-none-eabi-ld -EL -r  -z noexecstack  -T ./scripts/module-common.lds --build-id  -o crypto/hmac.ko crypto/hmac.o crypto/hmac.mod.o ;  true
