cmd_drivers/rtc/rtc-s5m.ko := arm-none-eabi-ld -EL -r  -z noexecstack  -T ./scripts/module-common.lds --build-id  -o drivers/rtc/rtc-s5m.ko drivers/rtc/rtc-s5m.o drivers/rtc/rtc-s5m.mod.o ;  true
