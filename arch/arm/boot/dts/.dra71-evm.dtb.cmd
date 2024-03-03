cmd_arch/arm/boot/dts/dra71-evm.dtb := mkdir -p arch/arm/boot/dts/ ; arm-none-eabi-gcc -E -Wp,-MD,arch/arm/boot/dts/.dra71-evm.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.dra71-evm.dtb.dts.tmp arch/arm/boot/dts/dra71-evm.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/dra71-evm.dtb -b 0 -iarch/arm/boot/dts/ -i./scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/boot/dts/.dra71-evm.dtb.d.dtc.tmp arch/arm/boot/dts/.dra71-evm.dtb.dts.tmp ; cat arch/arm/boot/dts/.dra71-evm.dtb.d.pre.tmp arch/arm/boot/dts/.dra71-evm.dtb.d.dtc.tmp > arch/arm/boot/dts/.dra71-evm.dtb.d

source_arch/arm/boot/dts/dra71-evm.dtb := arch/arm/boot/dts/dra71-evm.dts

deps_arch/arm/boot/dts/dra71-evm.dtb := \
  arch/arm/boot/dts/dra72-evm-common.dtsi \
  arch/arm/boot/dts/dra72x.dtsi \
  arch/arm/boot/dts/dra7.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  scripts/dtc/include-prefixes/dt-bindings/pinctrl/dra.h \
  arch/arm/boot/dts/omap4-cpu-thermal.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/thermal/thermal.h \
  arch/arm/boot/dts/omap5-gpu-thermal.dtsi \
  arch/arm/boot/dts/omap5-core-thermal.dtsi \
  arch/arm/boot/dts/dra7-dspeve-thermal.dtsi \
  arch/arm/boot/dts/dra7-iva-thermal.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h \
  scripts/dtc/include-prefixes/dt-bindings/clk/ti-dra7-atl.h \
  arch/arm/boot/dts/dra72x-mmc-iodelay.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/net/ti-dp83867.h \
  arch/arm/boot/dts/dra7xx-clocks.dtsi \

arch/arm/boot/dts/dra71-evm.dtb: $(deps_arch/arm/boot/dts/dra71-evm.dtb)

$(deps_arch/arm/boot/dts/dra71-evm.dtb):
