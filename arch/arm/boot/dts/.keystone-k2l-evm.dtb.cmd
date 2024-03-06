cmd_arch/arm/boot/dts/keystone-k2l-evm.dtb := mkdir -p arch/arm/boot/dts/ ; arm-none-eabi-gcc -E -Wp,-MD,arch/arm/boot/dts/.keystone-k2l-evm.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.keystone-k2l-evm.dtb.dts.tmp arch/arm/boot/dts/keystone-k2l-evm.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/keystone-k2l-evm.dtb -b 0 -iarch/arm/boot/dts/ -i./scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/boot/dts/.keystone-k2l-evm.dtb.d.dtc.tmp arch/arm/boot/dts/.keystone-k2l-evm.dtb.dts.tmp ; cat arch/arm/boot/dts/.keystone-k2l-evm.dtb.d.pre.tmp arch/arm/boot/dts/.keystone-k2l-evm.dtb.d.dtc.tmp > arch/arm/boot/dts/.keystone-k2l-evm.dtb.d

source_arch/arm/boot/dts/keystone-k2l-evm.dtb := arch/arm/boot/dts/keystone-k2l-evm.dts

deps_arch/arm/boot/dts/keystone-k2l-evm.dtb := \
  arch/arm/boot/dts/keystone.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h \
  arch/arm/boot/dts/skeleton.dtsi \
  arch/arm/boot/dts/keystone-k2l.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/reset/ti-syscon.h \
  arch/arm/boot/dts/keystone-clocks.dtsi \
  arch/arm/boot/dts/keystone-k2l-clocks.dtsi \
  arch/arm/boot/dts/keystone-k2l-netcp.dtsi \

arch/arm/boot/dts/keystone-k2l-evm.dtb: $(deps_arch/arm/boot/dts/keystone-k2l-evm.dtb)

$(deps_arch/arm/boot/dts/keystone-k2l-evm.dtb):
