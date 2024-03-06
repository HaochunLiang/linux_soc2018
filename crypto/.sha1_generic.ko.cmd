cmd_crypto/sha1_generic.ko := arm-none-eabi-ld -EL -r  -z noexecstack  -T ./scripts/module-common.lds --build-id  -o crypto/sha1_generic.ko crypto/sha1_generic.o crypto/sha1_generic.mod.o ;  true
