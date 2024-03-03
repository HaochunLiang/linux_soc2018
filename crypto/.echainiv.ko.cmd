cmd_crypto/echainiv.ko := arm-none-eabi-ld -EL -r  -z noexecstack  -T ./scripts/module-common.lds --build-id  -o crypto/echainiv.ko crypto/echainiv.o crypto/echainiv.mod.o ;  true
