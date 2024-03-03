cmd_arch/arm/boot/dts/omap3-overo-storm-chestnut43.dtb := mkdir -p arch/arm/boot/dts/ ; arm-none-eabi-gcc -E -Wp,-MD,arch/arm/boot/dts/.omap3-overo-storm-chestnut43.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.omap3-overo-storm-chestnut43.dtb.dts.tmp arch/arm/boot/dts/omap3-overo-storm-chestnut43.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/omap3-overo-storm-chestnut43.dtb -b 0 -iarch/arm/boot/dts/ -i./scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/boot/dts/.omap3-overo-storm-chestnut43.dtb.d.dtc.tmp arch/arm/boot/dts/.omap3-overo-storm-chestnut43.dtb.dts.tmp ; cat arch/arm/boot/dts/.omap3-overo-storm-chestnut43.dtb.d.pre.tmp arch/arm/boot/dts/.omap3-overo-storm-chestnut43.dtb.d.dtc.tmp > arch/arm/boot/dts/.omap3-overo-storm-chestnut43.dtb.d

source_arch/arm/boot/dts/omap3-overo-storm-chestnut43.dtb := arch/arm/boot/dts/omap3-overo-storm-chestnut43.dts

deps_arch/arm/boot/dts/omap3-overo-storm-chestnut43.dtb := \
  arch/arm/boot/dts/omap3-overo-storm.dtsi \
  arch/arm/boot/dts/omap36xx.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/media/omap3-isp.h \
  arch/arm/boot/dts/omap3.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  scripts/dtc/include-prefixes/dt-bindings/pinctrl/omap.h \
  arch/arm/boot/dts/omap3-cpu-thermal.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/thermal/thermal.h \
  arch/arm/boot/dts/omap3-overo-base.dtsi \
  arch/arm/boot/dts/twl4030.dtsi \
  arch/arm/boot/dts/twl4030_omap3.dtsi \
  arch/arm/boot/dts/omap3-overo-chestnut43-common.dtsi \
  arch/arm/boot/dts/omap3-overo-common-peripherals.dtsi \
  arch/arm/boot/dts/omap3-overo-common-lcd43.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/input/input.h \
  scripts/dtc/include-prefixes/dt-bindings/input/linux-event-codes.h \
  arch/arm/boot/dts/omap-gpmc-smsc9221.dtsi \
  arch/arm/boot/dts/omap3xxx-clocks.dtsi \
  arch/arm/boot/dts/omap34xx-omap36xx-clocks.dtsi \
  arch/arm/boot/dts/omap36xx-omap3430es2plus-clocks.dtsi \
  arch/arm/boot/dts/omap36xx-am35xx-omap3430es2plus-clocks.dtsi \
  arch/arm/boot/dts/omap36xx-clocks.dtsi \

arch/arm/boot/dts/omap3-overo-storm-chestnut43.dtb: $(deps_arch/arm/boot/dts/omap3-overo-storm-chestnut43.dtb)

$(deps_arch/arm/boot/dts/omap3-overo-storm-chestnut43.dtb):
