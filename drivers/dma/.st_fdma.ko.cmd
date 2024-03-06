cmd_drivers/dma/st_fdma.ko := arm-none-eabi-ld -EL -r  -z noexecstack  -T ./scripts/module-common.lds --build-id  -o drivers/dma/st_fdma.ko drivers/dma/st_fdma.o drivers/dma/st_fdma.mod.o ;  true
