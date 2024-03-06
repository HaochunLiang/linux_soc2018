cmd_crypto/aes_generic.ko := arm-none-eabi-ld -EL -r  -z noexecstack  -T ./scripts/module-common.lds --build-id  -o crypto/aes_generic.ko crypto/aes_generic.o crypto/aes_generic.mod.o ;  true
