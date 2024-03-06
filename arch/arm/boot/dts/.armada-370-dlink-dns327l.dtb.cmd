cmd_arch/arm/boot/dts/armada-370-dlink-dns327l.dtb := mkdir -p arch/arm/boot/dts/ ; arm-none-eabi-gcc -E -Wp,-MD,arch/arm/boot/dts/.armada-370-dlink-dns327l.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.armada-370-dlink-dns327l.dtb.dts.tmp arch/arm/boot/dts/armada-370-dlink-dns327l.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/armada-370-dlink-dns327l.dtb -b 0 -iarch/arm/boot/dts/ -i./scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/boot/dts/.armada-370-dlink-dns327l.dtb.d.dtc.tmp arch/arm/boot/dts/.armada-370-dlink-dns327l.dtb.dts.tmp ; cat arch/arm/boot/dts/.armada-370-dlink-dns327l.dtb.d.pre.tmp arch/arm/boot/dts/.armada-370-dlink-dns327l.dtb.d.dtc.tmp > arch/arm/boot/dts/.armada-370-dlink-dns327l.dtb.d

source_arch/arm/boot/dts/armada-370-dlink-dns327l.dtb := arch/arm/boot/dts/armada-370-dlink-dns327l.dts

deps_arch/arm/boot/dts/armada-370-dlink-dns327l.dtb := \
  scripts/dtc/include-prefixes/dt-bindings/input/input.h \
  scripts/dtc/include-prefixes/dt-bindings/input/linux-event-codes.h \
  scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h \
  arch/arm/boot/dts/armada-370.dtsi \
  arch/arm/boot/dts/armada-370-xp.dtsi \

arch/arm/boot/dts/armada-370-dlink-dns327l.dtb: $(deps_arch/arm/boot/dts/armada-370-dlink-dns327l.dtb)

$(deps_arch/arm/boot/dts/armada-370-dlink-dns327l.dtb):
