cmd_crypto/cryptd.ko := arm-none-eabi-ld -EL -r  -z noexecstack  -T ./scripts/module-common.lds --build-id  -o crypto/cryptd.ko crypto/cryptd.o crypto/cryptd.mod.o ;  true
