cmd_arch/arm/boot/dts/armada-xp-matrix.dtb := mkdir -p arch/arm/boot/dts/ ; arm-none-eabi-gcc -E -Wp,-MD,arch/arm/boot/dts/.armada-xp-matrix.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.armada-xp-matrix.dtb.dts.tmp arch/arm/boot/dts/armada-xp-matrix.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/armada-xp-matrix.dtb -b 0 -iarch/arm/boot/dts/ -i./scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/boot/dts/.armada-xp-matrix.dtb.d.dtc.tmp arch/arm/boot/dts/.armada-xp-matrix.dtb.dts.tmp ; cat arch/arm/boot/dts/.armada-xp-matrix.dtb.d.pre.tmp arch/arm/boot/dts/.armada-xp-matrix.dtb.d.dtc.tmp > arch/arm/boot/dts/.armada-xp-matrix.dtb.d

source_arch/arm/boot/dts/armada-xp-matrix.dtb := arch/arm/boot/dts/armada-xp-matrix.dts

deps_arch/arm/boot/dts/armada-xp-matrix.dtb := \
  arch/arm/boot/dts/armada-xp-mv78460.dtsi \
  arch/arm/boot/dts/armada-xp.dtsi \
  arch/arm/boot/dts/armada-370-xp.dtsi \

arch/arm/boot/dts/armada-xp-matrix.dtb: $(deps_arch/arm/boot/dts/armada-xp-matrix.dtb)

$(deps_arch/arm/boot/dts/armada-xp-matrix.dtb):
