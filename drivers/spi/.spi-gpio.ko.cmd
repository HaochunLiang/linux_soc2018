cmd_drivers/spi/spi-gpio.ko := arm-none-eabi-ld -EL -r  -z noexecstack  -T ./scripts/module-common.lds --build-id  -o drivers/spi/spi-gpio.ko drivers/spi/spi-gpio.o drivers/spi/spi-gpio.mod.o ;  true
