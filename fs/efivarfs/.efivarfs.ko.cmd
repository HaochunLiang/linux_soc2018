cmd_fs/efivarfs/efivarfs.ko := arm-none-eabi-ld -EL -r  -z noexecstack  -T ./scripts/module-common.lds --build-id  -o fs/efivarfs/efivarfs.ko fs/efivarfs/efivarfs.o fs/efivarfs/efivarfs.mod.o ;  true
