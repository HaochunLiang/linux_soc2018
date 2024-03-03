cmd_arch/arm/boot/dts/am437x-sbc-t43.dtb := mkdir -p arch/arm/boot/dts/ ; arm-none-eabi-gcc -E -Wp,-MD,arch/arm/boot/dts/.am437x-sbc-t43.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.am437x-sbc-t43.dtb.dts.tmp arch/arm/boot/dts/am437x-sbc-t43.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/am437x-sbc-t43.dtb -b 0 -iarch/arm/boot/dts/ -i./scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/boot/dts/.am437x-sbc-t43.dtb.d.dtc.tmp arch/arm/boot/dts/.am437x-sbc-t43.dtb.dts.tmp ; cat arch/arm/boot/dts/.am437x-sbc-t43.dtb.d.pre.tmp arch/arm/boot/dts/.am437x-sbc-t43.dtb.d.dtc.tmp > arch/arm/boot/dts/.am437x-sbc-t43.dtb.d

source_arch/arm/boot/dts/am437x-sbc-t43.dtb := arch/arm/boot/dts/am437x-sbc-t43.dts

deps_arch/arm/boot/dts/am437x-sbc-t43.dtb := \
  arch/arm/boot/dts/am437x-cm-t43.dts \
  scripts/dtc/include-prefixes/dt-bindings/pinctrl/am43xx.h \
  scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  arch/arm/boot/dts/am4372.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  arch/arm/boot/dts/compulab-sb-som.dtsi \
  arch/arm/boot/dts/am43xx-clocks.dtsi \

arch/arm/boot/dts/am437x-sbc-t43.dtb: $(deps_arch/arm/boot/dts/am437x-sbc-t43.dtb)

$(deps_arch/arm/boot/dts/am437x-sbc-t43.dtb):
