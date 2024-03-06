cmd_arch/arm/boot/dts/ste-ccu9540.dtb := mkdir -p arch/arm/boot/dts/ ; arm-none-eabi-gcc -E -Wp,-MD,arch/arm/boot/dts/.ste-ccu9540.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.ste-ccu9540.dtb.dts.tmp arch/arm/boot/dts/ste-ccu9540.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/ste-ccu9540.dtb -b 0 -iarch/arm/boot/dts/ -i./scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/boot/dts/.ste-ccu9540.dtb.d.dtc.tmp arch/arm/boot/dts/.ste-ccu9540.dtb.dts.tmp ; cat arch/arm/boot/dts/.ste-ccu9540.dtb.d.pre.tmp arch/arm/boot/dts/.ste-ccu9540.dtb.d.dtc.tmp > arch/arm/boot/dts/.ste-ccu9540.dtb.d

source_arch/arm/boot/dts/ste-ccu9540.dtb := arch/arm/boot/dts/ste-ccu9540.dts

deps_arch/arm/boot/dts/ste-ccu9540.dtb := \
  arch/arm/boot/dts/ste-dbx5x0.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  scripts/dtc/include-prefixes/dt-bindings/mfd/dbx500-prcmu.h \
  scripts/dtc/include-prefixes/dt-bindings/arm/ux500_pm_domains.h \
  scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h \
  scripts/dtc/include-prefixes/dt-bindings/clock/ste-ab8500.h \
  arch/arm/boot/dts/skeleton.dtsi \

arch/arm/boot/dts/ste-ccu9540.dtb: $(deps_arch/arm/boot/dts/ste-ccu9540.dtb)

$(deps_arch/arm/boot/dts/ste-ccu9540.dtb):
