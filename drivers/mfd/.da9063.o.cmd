cmd_drivers/mfd/da9063.o := arm-none-eabi-ld -EL  -z noexecstack    -r -o drivers/mfd/da9063.o drivers/mfd/da9063-core.o drivers/mfd/da9063-irq.o drivers/mfd/da9063-i2c.o 
