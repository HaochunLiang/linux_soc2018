cmd_arch/arm/boot/dts/exynos5440-sd5v1.dtb := mkdir -p arch/arm/boot/dts/ ; arm-none-eabi-gcc -E -Wp,-MD,arch/arm/boot/dts/.exynos5440-sd5v1.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.exynos5440-sd5v1.dtb.dts.tmp arch/arm/boot/dts/exynos5440-sd5v1.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/exynos5440-sd5v1.dtb -b 0 -iarch/arm/boot/dts/ -i./scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/boot/dts/.exynos5440-sd5v1.dtb.d.dtc.tmp arch/arm/boot/dts/.exynos5440-sd5v1.dtb.dts.tmp ; cat arch/arm/boot/dts/.exynos5440-sd5v1.dtb.d.pre.tmp arch/arm/boot/dts/.exynos5440-sd5v1.dtb.d.dtc.tmp > arch/arm/boot/dts/.exynos5440-sd5v1.dtb.d

source_arch/arm/boot/dts/exynos5440-sd5v1.dtb := arch/arm/boot/dts/exynos5440-sd5v1.dts

deps_arch/arm/boot/dts/exynos5440-sd5v1.dtb := \
  arch/arm/boot/dts/exynos5440.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/clock/exynos5440.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  arch/arm/boot/dts/exynos5440-tmu-sensor-conf.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/thermal/thermal_exynos.h \
  arch/arm/boot/dts/exynos5440-trip-points.dtsi \

arch/arm/boot/dts/exynos5440-sd5v1.dtb: $(deps_arch/arm/boot/dts/exynos5440-sd5v1.dtb)

$(deps_arch/arm/boot/dts/exynos5440-sd5v1.dtb):
