cmd_crypto/authencesn.ko := arm-none-eabi-ld -EL -r  -z noexecstack  -T ./scripts/module-common.lds --build-id  -o crypto/authencesn.ko crypto/authencesn.o crypto/authencesn.mod.o ;  true
