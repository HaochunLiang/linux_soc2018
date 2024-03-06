cmd_crypto/crypto_engine.ko := arm-none-eabi-ld -EL -r  -z noexecstack  -T ./scripts/module-common.lds --build-id  -o crypto/crypto_engine.ko crypto/crypto_engine.o crypto/crypto_engine.mod.o ;  true
