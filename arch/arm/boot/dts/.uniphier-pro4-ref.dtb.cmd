cmd_arch/arm/boot/dts/uniphier-pro4-ref.dtb := mkdir -p arch/arm/boot/dts/ ; arm-none-eabi-gcc -E -Wp,-MD,arch/arm/boot/dts/.uniphier-pro4-ref.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.uniphier-pro4-ref.dtb.dts.tmp arch/arm/boot/dts/uniphier-pro4-ref.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/uniphier-pro4-ref.dtb -b 0 -iarch/arm/boot/dts/ -i./scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/boot/dts/.uniphier-pro4-ref.dtb.d.dtc.tmp arch/arm/boot/dts/.uniphier-pro4-ref.dtb.dts.tmp ; cat arch/arm/boot/dts/.uniphier-pro4-ref.dtb.d.pre.tmp arch/arm/boot/dts/.uniphier-pro4-ref.dtb.d.dtc.tmp > arch/arm/boot/dts/.uniphier-pro4-ref.dtb.d

source_arch/arm/boot/dts/uniphier-pro4-ref.dtb := arch/arm/boot/dts/uniphier-pro4-ref.dts

deps_arch/arm/boot/dts/uniphier-pro4-ref.dtb := \
  arch/arm/boot/dts/uniphier-pro4.dtsi \
  arch/arm/boot/dts/uniphier-pinctrl.dtsi \
  arch/arm/boot/dts/uniphier-ref-daughter.dtsi \
  arch/arm/boot/dts/uniphier-support-card.dtsi \

arch/arm/boot/dts/uniphier-pro4-ref.dtb: $(deps_arch/arm/boot/dts/uniphier-pro4-ref.dtb)

$(deps_arch/arm/boot/dts/uniphier-pro4-ref.dtb):
