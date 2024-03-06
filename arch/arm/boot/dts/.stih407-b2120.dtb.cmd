cmd_arch/arm/boot/dts/stih407-b2120.dtb := mkdir -p arch/arm/boot/dts/ ; arm-none-eabi-gcc -E -Wp,-MD,arch/arm/boot/dts/.stih407-b2120.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.stih407-b2120.dtb.dts.tmp arch/arm/boot/dts/stih407-b2120.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/stih407-b2120.dtb -b 0 -iarch/arm/boot/dts/ -i./scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/boot/dts/.stih407-b2120.dtb.d.dtc.tmp arch/arm/boot/dts/.stih407-b2120.dtb.dts.tmp ; cat arch/arm/boot/dts/.stih407-b2120.dtb.d.pre.tmp arch/arm/boot/dts/.stih407-b2120.dtb.d.dtc.tmp > arch/arm/boot/dts/.stih407-b2120.dtb.d

source_arch/arm/boot/dts/stih407-b2120.dtb := arch/arm/boot/dts/stih407-b2120.dts

deps_arch/arm/boot/dts/stih407-b2120.dtb := \
  arch/arm/boot/dts/stih407.dtsi \
  arch/arm/boot/dts/stih407-clock.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/clock/stih407-clks.h \
  arch/arm/boot/dts/stih407-family.dtsi \
  arch/arm/boot/dts/stih407-pinctrl.dtsi \
  arch/arm/boot/dts/st-pincfg.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  scripts/dtc/include-prefixes/dt-bindings/mfd/st-lpc.h \
  scripts/dtc/include-prefixes/dt-bindings/phy/phy.h \
  scripts/dtc/include-prefixes/dt-bindings/reset/stih407-resets.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq-st.h \
  scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h \
  arch/arm/boot/dts/stihxxx-b2120.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/media/c8sectpfe.h \

arch/arm/boot/dts/stih407-b2120.dtb: $(deps_arch/arm/boot/dts/stih407-b2120.dtb)

$(deps_arch/arm/boot/dts/stih407-b2120.dtb):
