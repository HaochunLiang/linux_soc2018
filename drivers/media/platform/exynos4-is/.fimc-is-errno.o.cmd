cmd_drivers/media/platform/exynos4-is/fimc-is-errno.o := arm-none-eabi-gcc -Wp,-MD,drivers/media/platform/exynos4-is/.fimc-is-errno.o.d  -nostdinc -isystem /usr/lib/gcc/arm-none-eabi/9.2.1/include -I./arch/arm/include -I./arch/arm/include/generated  -I./include -I./arch/arm/include/uapi -I./arch/arm/include/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -fno-PIE -fno-dwarf2-cfi-asm -fno-ipa-sra -mabi=aapcs-linux -mfpu=vfp -funwind-tables -marm -Wa,-mno-warn-deprecated -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -Wno-address-of-packed-member -Wno-attribute-alias -O2 --param=allow-store-data-races=0 -DCC_HAVE_ASM_GOTO -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -Wno-unused-const-variable -fomit-frame-pointer -fno-var-tracking-assignments -Wdeclaration-after-statement -Wno-pointer-sign -Wno-stringop-truncation -Wno-array-bounds -Wno-stringop-overflow -Wno-restrict -Wno-maybe-uninitialized -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fno-stack-check -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -fmacro-prefix-map=./= -Wno-packed-not-aligned  -DMODULE  -DKBUILD_BASENAME='"fimc_is_errno"'  -DKBUILD_MODNAME='"exynos_fimc_is"' -c -o drivers/media/platform/exynos4-is/fimc-is-errno.o drivers/media/platform/exynos4-is/fimc-is-errno.c

source_drivers/media/platform/exynos4-is/fimc-is-errno.o := drivers/media/platform/exynos4-is/fimc-is-errno.c

deps_drivers/media/platform/exynos4-is/fimc-is-errno.o := \
    $(wildcard include/config/max/number/state.h) \
    $(wildcard include/config/max/number/invalid.h) \
    $(wildcard include/config/yaw/angle/state.h) \
    $(wildcard include/config/yaw/angle/invalid.h) \
    $(wildcard include/config/roll/angle/state.h) \
    $(wildcard include/config/roll/angle/invalid.h) \
    $(wildcard include/config/smile/mode/invalid.h) \
    $(wildcard include/config/blink/mode/invalid.h) \
    $(wildcard include/config/eyes/detect/invalid.h) \
    $(wildcard include/config/mouth/detect/invalid.h) \
    $(wildcard include/config/orientation/state.h) \
    $(wildcard include/config/orientation/invalid.h) \
    $(wildcard include/config/orientation/value/invalid.h) \
  include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/retpoline.h) \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/gcov/kernel.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  drivers/media/platform/exynos4-is/fimc-is-errno.h \

drivers/media/platform/exynos4-is/fimc-is-errno.o: $(deps_drivers/media/platform/exynos4-is/fimc-is-errno.o)

$(deps_drivers/media/platform/exynos4-is/fimc-is-errno.o):
