cmd_crypto/authenc.ko := arm-none-eabi-ld -EL -r  -z noexecstack  -T ./scripts/module-common.lds --build-id  -o crypto/authenc.ko crypto/authenc.o crypto/authenc.mod.o ;  true
