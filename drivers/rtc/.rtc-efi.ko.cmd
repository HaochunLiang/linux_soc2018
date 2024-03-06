cmd_drivers/rtc/rtc-efi.ko := arm-none-eabi-ld -EL -r  -z noexecstack  -T ./scripts/module-common.lds --build-id  -o drivers/rtc/rtc-efi.ko drivers/rtc/rtc-efi.o drivers/rtc/rtc-efi.mod.o ;  true
