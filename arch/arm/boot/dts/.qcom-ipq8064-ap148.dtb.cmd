cmd_arch/arm/boot/dts/qcom-ipq8064-ap148.dtb := mkdir -p arch/arm/boot/dts/ ; arm-none-eabi-gcc -E -Wp,-MD,arch/arm/boot/dts/.qcom-ipq8064-ap148.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.qcom-ipq8064-ap148.dtb.dts.tmp arch/arm/boot/dts/qcom-ipq8064-ap148.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/qcom-ipq8064-ap148.dtb -b 0 -iarch/arm/boot/dts/ -i./scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/boot/dts/.qcom-ipq8064-ap148.dtb.d.dtc.tmp arch/arm/boot/dts/.qcom-ipq8064-ap148.dtb.dts.tmp ; cat arch/arm/boot/dts/.qcom-ipq8064-ap148.dtb.d.pre.tmp arch/arm/boot/dts/.qcom-ipq8064-ap148.dtb.d.dtc.tmp > arch/arm/boot/dts/.qcom-ipq8064-ap148.dtb.d

source_arch/arm/boot/dts/qcom-ipq8064-ap148.dtb := arch/arm/boot/dts/qcom-ipq8064-ap148.dts

deps_arch/arm/boot/dts/qcom-ipq8064-ap148.dtb := \
  arch/arm/boot/dts/qcom-ipq8064-v1.0.dtsi \
  arch/arm/boot/dts/qcom-ipq8064.dtsi \
  arch/arm/boot/dts/skeleton.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-ipq806x.h \
  scripts/dtc/include-prefixes/dt-bindings/clock/qcom,lcc-ipq806x.h \
  scripts/dtc/include-prefixes/dt-bindings/soc/qcom,gsbi.h \

arch/arm/boot/dts/qcom-ipq8064-ap148.dtb: $(deps_arch/arm/boot/dts/qcom-ipq8064-ap148.dtb)

$(deps_arch/arm/boot/dts/qcom-ipq8064-ap148.dtb):
