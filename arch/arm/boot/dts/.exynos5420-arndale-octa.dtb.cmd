cmd_arch/arm/boot/dts/exynos5420-arndale-octa.dtb := mkdir -p arch/arm/boot/dts/ ; arm-none-eabi-gcc -E -Wp,-MD,arch/arm/boot/dts/.exynos5420-arndale-octa.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.exynos5420-arndale-octa.dtb.dts.tmp arch/arm/boot/dts/exynos5420-arndale-octa.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/exynos5420-arndale-octa.dtb -b 0 -iarch/arm/boot/dts/ -i./scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/boot/dts/.exynos5420-arndale-octa.dtb.d.dtc.tmp arch/arm/boot/dts/.exynos5420-arndale-octa.dtb.dts.tmp ; cat arch/arm/boot/dts/.exynos5420-arndale-octa.dtb.d.pre.tmp arch/arm/boot/dts/.exynos5420-arndale-octa.dtb.d.dtc.tmp > arch/arm/boot/dts/.exynos5420-arndale-octa.dtb.d

source_arch/arm/boot/dts/exynos5420-arndale-octa.dtb := arch/arm/boot/dts/exynos5420-arndale-octa.dts

deps_arch/arm/boot/dts/exynos5420-arndale-octa.dtb := \
  arch/arm/boot/dts/exynos5420.dtsi \
  arch/arm/boot/dts/exynos54xx.dtsi \
  arch/arm/boot/dts/exynos5.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  arch/arm/boot/dts/exynos-syscon-restart.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/clock/exynos5420.h \
  scripts/dtc/include-prefixes/dt-bindings/clock/exynos-audss-clk.h \
  arch/arm/boot/dts/exynos5420-tmu-sensor-conf.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/thermal/thermal_exynos.h \
  arch/arm/boot/dts/exynos5420-trip-points.dtsi \
  arch/arm/boot/dts/exynos5420-pinctrl.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/pinctrl/samsung.h \
  arch/arm/boot/dts/exynos5420-cpus.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h \
  scripts/dtc/include-prefixes/dt-bindings/input/input.h \
  scripts/dtc/include-prefixes/dt-bindings/input/linux-event-codes.h \
  scripts/dtc/include-prefixes/dt-bindings/clock/samsung,s2mps11.h \

arch/arm/boot/dts/exynos5420-arndale-octa.dtb: $(deps_arch/arm/boot/dts/exynos5420-arndale-octa.dtb)

$(deps_arch/arm/boot/dts/exynos5420-arndale-octa.dtb):
