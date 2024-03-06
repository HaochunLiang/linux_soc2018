cmd_drivers/hwmon/ina2xx.ko := arm-none-eabi-ld -EL -r  -z noexecstack  -T ./scripts/module-common.lds --build-id  -o drivers/hwmon/ina2xx.ko drivers/hwmon/ina2xx.o drivers/hwmon/ina2xx.mod.o ;  true
