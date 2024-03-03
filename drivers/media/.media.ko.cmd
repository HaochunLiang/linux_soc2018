cmd_drivers/media/media.ko := arm-none-eabi-ld -EL -r  -z noexecstack  -T ./scripts/module-common.lds --build-id  -o drivers/media/media.ko drivers/media/media.o drivers/media/media.mod.o ;  true
