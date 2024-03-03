cmd_drivers/rtc/rtc-s3c.ko := arm-none-eabi-ld -EL -r  -z noexecstack  -T ./scripts/module-common.lds --build-id  -o drivers/rtc/rtc-s3c.ko drivers/rtc/rtc-s3c.o drivers/rtc/rtc-s3c.mod.o ;  true
