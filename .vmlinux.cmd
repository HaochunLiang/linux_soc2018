cmd_vmlinux := /bin/bash scripts/link-vmlinux.sh arm-none-eabi-ld -EL  -z noexecstack  --no-undefined -X --pic-veneer --build-id ;  true
