cmd_arch/arm/boot/dts/exynos4210-trats.dtb := mkdir -p arch/arm/boot/dts/ ; arm-none-eabi-gcc -E -Wp,-MD,arch/arm/boot/dts/.exynos4210-trats.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.exynos4210-trats.dtb.dts.tmp arch/arm/boot/dts/exynos4210-trats.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/exynos4210-trats.dtb -b 0 -iarch/arm/boot/dts/ -i./scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/boot/dts/.exynos4210-trats.dtb.d.dtc.tmp arch/arm/boot/dts/.exynos4210-trats.dtb.dts.tmp ; cat arch/arm/boot/dts/.exynos4210-trats.dtb.d.pre.tmp arch/arm/boot/dts/.exynos4210-trats.dtb.d.dtc.tmp > arch/arm/boot/dts/.exynos4210-trats.dtb.d

source_arch/arm/boot/dts/exynos4210-trats.dtb := arch/arm/boot/dts/exynos4210-trats.dts

deps_arch/arm/boot/dts/exynos4210-trats.dtb := \
  arch/arm/boot/dts/exynos4210.dtsi \
  arch/arm/boot/dts/exynos4.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/clock/exynos4.h \
  scripts/dtc/include-prefixes/dt-bindings/clock/exynos-audss-clk.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  arch/arm/boot/dts/exynos-syscon-restart.dtsi \
  arch/arm/boot/dts/exynos4412-tmu-sensor-conf.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/thermal/thermal_exynos.h \
  arch/arm/boot/dts/exynos4210-pinctrl.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/pinctrl/samsung.h \
  arch/arm/boot/dts/exynos4-cpu-thermal.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/thermal/thermal.h \
  scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h \

arch/arm/boot/dts/exynos4210-trats.dtb: $(deps_arch/arm/boot/dts/exynos4210-trats.dtb)

$(deps_arch/arm/boot/dts/exynos4210-trats.dtb):
