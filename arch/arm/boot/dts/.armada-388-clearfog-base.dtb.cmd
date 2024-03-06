cmd_arch/arm/boot/dts/armada-388-clearfog-base.dtb := mkdir -p arch/arm/boot/dts/ ; arm-none-eabi-gcc -E -Wp,-MD,arch/arm/boot/dts/.armada-388-clearfog-base.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.armada-388-clearfog-base.dtb.dts.tmp arch/arm/boot/dts/armada-388-clearfog-base.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/armada-388-clearfog-base.dtb -b 0 -iarch/arm/boot/dts/ -i./scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/boot/dts/.armada-388-clearfog-base.dtb.d.dtc.tmp arch/arm/boot/dts/.armada-388-clearfog-base.dtb.dts.tmp ; cat arch/arm/boot/dts/.armada-388-clearfog-base.dtb.d.pre.tmp arch/arm/boot/dts/.armada-388-clearfog-base.dtb.d.dtc.tmp > arch/arm/boot/dts/.armada-388-clearfog-base.dtb.d

source_arch/arm/boot/dts/armada-388-clearfog-base.dtb := arch/arm/boot/dts/armada-388-clearfog-base.dts

deps_arch/arm/boot/dts/armada-388-clearfog-base.dtb := \
  arch/arm/boot/dts/armada-388-clearfog.dtsi \
  arch/arm/boot/dts/armada-388.dtsi \
  arch/arm/boot/dts/armada-385.dtsi \
  arch/arm/boot/dts/armada-38x.dtsi \
  arch/arm/boot/dts/skeleton.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  arch/arm/boot/dts/armada-38x-solidrun-microsom.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/input/input.h \
  scripts/dtc/include-prefixes/dt-bindings/input/linux-event-codes.h \
  scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h \

arch/arm/boot/dts/armada-388-clearfog-base.dtb: $(deps_arch/arm/boot/dts/armada-388-clearfog-base.dtb)

$(deps_arch/arm/boot/dts/armada-388-clearfog-base.dtb):
