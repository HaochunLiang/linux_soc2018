cmd_arch/arm/boot/dts/meson8b-mxq.dtb := mkdir -p arch/arm/boot/dts/ ; arm-none-eabi-gcc -E -Wp,-MD,arch/arm/boot/dts/.meson8b-mxq.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.meson8b-mxq.dtb.dts.tmp arch/arm/boot/dts/meson8b-mxq.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/meson8b-mxq.dtb -b 0 -iarch/arm/boot/dts/ -i./scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/boot/dts/.meson8b-mxq.dtb.d.dtc.tmp arch/arm/boot/dts/.meson8b-mxq.dtb.dts.tmp ; cat arch/arm/boot/dts/.meson8b-mxq.dtb.d.pre.tmp arch/arm/boot/dts/.meson8b-mxq.dtb.d.dtc.tmp > arch/arm/boot/dts/.meson8b-mxq.dtb.d

source_arch/arm/boot/dts/meson8b-mxq.dtb := arch/arm/boot/dts/meson8b-mxq.dts

deps_arch/arm/boot/dts/meson8b-mxq.dtb := \
  arch/arm/boot/dts/meson8b.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/clock/meson8b-clkc.h \
  scripts/dtc/include-prefixes/dt-bindings/gpio/meson8b-gpio.h \
  scripts/dtc/include-prefixes/dt-bindings/gpio/meson8-gpio.h \
  scripts/dtc/include-prefixes/dt-bindings/reset/amlogic,meson8b-reset.h \
  arch/arm/boot/dts/meson.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  arch/arm/boot/dts/skeleton.dtsi \

arch/arm/boot/dts/meson8b-mxq.dtb: $(deps_arch/arm/boot/dts/meson8b-mxq.dtb)

$(deps_arch/arm/boot/dts/meson8b-mxq.dtb):
