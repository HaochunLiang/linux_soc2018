cmd_arch/arm/boot/dts/armada-xp-linksys-mamba.dtb := mkdir -p arch/arm/boot/dts/ ; arm-none-eabi-gcc -E -Wp,-MD,arch/arm/boot/dts/.armada-xp-linksys-mamba.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.armada-xp-linksys-mamba.dtb.dts.tmp arch/arm/boot/dts/armada-xp-linksys-mamba.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/armada-xp-linksys-mamba.dtb -b 0 -iarch/arm/boot/dts/ -i./scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/boot/dts/.armada-xp-linksys-mamba.dtb.d.dtc.tmp arch/arm/boot/dts/.armada-xp-linksys-mamba.dtb.dts.tmp ; cat arch/arm/boot/dts/.armada-xp-linksys-mamba.dtb.d.pre.tmp arch/arm/boot/dts/.armada-xp-linksys-mamba.dtb.d.dtc.tmp > arch/arm/boot/dts/.armada-xp-linksys-mamba.dtb.d

source_arch/arm/boot/dts/armada-xp-linksys-mamba.dtb := arch/arm/boot/dts/armada-xp-linksys-mamba.dts

deps_arch/arm/boot/dts/armada-xp-linksys-mamba.dtb := \
    $(wildcard include/config/debug/mvebu/uart0/alternate.h) \
  scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h \
  scripts/dtc/include-prefixes/dt-bindings/input/input.h \
  scripts/dtc/include-prefixes/dt-bindings/input/linux-event-codes.h \
  arch/arm/boot/dts/armada-xp-mv78230.dtsi \
  arch/arm/boot/dts/armada-xp.dtsi \
  arch/arm/boot/dts/armada-370-xp.dtsi \

arch/arm/boot/dts/armada-xp-linksys-mamba.dtb: $(deps_arch/arm/boot/dts/armada-xp-linksys-mamba.dtb)

$(deps_arch/arm/boot/dts/armada-xp-linksys-mamba.dtb):
