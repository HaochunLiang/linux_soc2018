cmd_arch/arm/boot/dts/qcom-apq8074-dragonboard.dtb := mkdir -p arch/arm/boot/dts/ ; arm-none-eabi-gcc -E -Wp,-MD,arch/arm/boot/dts/.qcom-apq8074-dragonboard.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.qcom-apq8074-dragonboard.dtb.dts.tmp arch/arm/boot/dts/qcom-apq8074-dragonboard.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/qcom-apq8074-dragonboard.dtb -b 0 -iarch/arm/boot/dts/ -i./scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/boot/dts/.qcom-apq8074-dragonboard.dtb.d.dtc.tmp arch/arm/boot/dts/.qcom-apq8074-dragonboard.dtb.dts.tmp ; cat arch/arm/boot/dts/.qcom-apq8074-dragonboard.dtb.d.pre.tmp arch/arm/boot/dts/.qcom-apq8074-dragonboard.dtb.d.dtc.tmp > arch/arm/boot/dts/.qcom-apq8074-dragonboard.dtb.d

source_arch/arm/boot/dts/qcom-apq8074-dragonboard.dtb := arch/arm/boot/dts/qcom-apq8074-dragonboard.dts

deps_arch/arm/boot/dts/qcom-apq8074-dragonboard.dtb := \
  arch/arm/boot/dts/qcom-msm8974.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-msm8974.h \
    $(wildcard include/config/noc/clk/src.h) \
  scripts/dtc/include-prefixes/dt-bindings/clock/qcom,rpmcc.h \
  scripts/dtc/include-prefixes/dt-bindings/reset/qcom,gcc-msm8974.h \
    $(wildcard include/config/noc/bcr.h) \
  scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h \
  arch/arm/boot/dts/skeleton.dtsi \
  arch/arm/boot/dts/qcom-pm8841.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/spmi/spmi.h \
  arch/arm/boot/dts/qcom-pm8941.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/iio/qcom,spmi-vadc.h \

arch/arm/boot/dts/qcom-apq8074-dragonboard.dtb: $(deps_arch/arm/boot/dts/qcom-apq8074-dragonboard.dtb)

$(deps_arch/arm/boot/dts/qcom-apq8074-dragonboard.dtb):
