cmd_fs/efivarfs/efivarfs.o := arm-none-eabi-ld -EL  -z noexecstack    -r -o fs/efivarfs/efivarfs.o fs/efivarfs/inode.o fs/efivarfs/file.o fs/efivarfs/super.o 
