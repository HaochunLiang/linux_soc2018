cmd_crypto/des_generic.ko := arm-none-eabi-ld -EL -r  -z noexecstack  -T ./scripts/module-common.lds --build-id  -o crypto/des_generic.ko crypto/des_generic.o crypto/des_generic.mod.o ;  true
