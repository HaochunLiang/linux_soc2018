cmd_crypto/md5.ko := arm-none-eabi-ld -EL -r  -z noexecstack  -T ./scripts/module-common.lds --build-id  -o crypto/md5.ko crypto/md5.o crypto/md5.mod.o ;  true
