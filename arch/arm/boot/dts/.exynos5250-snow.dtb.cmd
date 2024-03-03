cmd_arch/arm/boot/dts/exynos5250-snow.dtb := mkdir -p arch/arm/boot/dts/ ; arm-none-eabi-gcc -E -Wp,-MD,arch/arm/boot/dts/.exynos5250-snow.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.exynos5250-snow.dtb.dts.tmp arch/arm/boot/dts/exynos5250-snow.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/exynos5250-snow.dtb -b 0 -iarch/arm/boot/dts/ -i./scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/boot/dts/.exynos5250-snow.dtb.d.dtc.tmp arch/arm/boot/dts/.exynos5250-snow.dtb.dts.tmp ; cat arch/arm/boot/dts/.exynos5250-snow.dtb.d.pre.tmp arch/arm/boot/dts/.exynos5250-snow.dtb.d.dtc.tmp > arch/arm/boot/dts/.exynos5250-snow.dtb.d

source_arch/arm/boot/dts/exynos5250-snow.dtb := arch/arm/boot/dts/exynos5250-snow.dts

deps_arch/arm/boot/dts/exynos5250-snow.dtb := \
  arch/arm/boot/dts/exynos5250-snow-common.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h \
  scripts/dtc/include-prefixes/dt-bindings/clock/maxim,max77686.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  scripts/dtc/include-prefixes/dt-bindings/input/input.h \
  scripts/dtc/include-prefixes/dt-bindings/input/linux-event-codes.h \
  arch/arm/boot/dts/exynos5250.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/clock/exynos5250.h \
  arch/arm/boot/dts/exynos5.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  arch/arm/boot/dts/exynos-syscon-restart.dtsi \
  arch/arm/boot/dts/exynos4-cpu-thermal.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/thermal/thermal.h \
  scripts/dtc/include-prefixes/dt-bindings/clock/exynos-audss-clk.h \
  arch/arm/boot/dts/exynos4412-tmu-sensor-conf.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/thermal/thermal_exynos.h \
  arch/arm/boot/dts/exynos5250-pinctrl.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/pinctrl/samsung.h \
  arch/arm/boot/dts/cros-ec-keyboard.dtsi \

arch/arm/boot/dts/exynos5250-snow.dtb: $(deps_arch/arm/boot/dts/exynos5250-snow.dtb)

$(deps_arch/arm/boot/dts/exynos5250-snow.dtb):
