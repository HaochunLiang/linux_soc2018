cmd_arch/x86/boot/compressed/cpuflags.o := gcc -Wp,-MD,arch/x86/boot/compressed/.cpuflags.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/9/include -I./arch/x86/include -I./arch/x86/include/generated  -I./include -I./arch/x86/include/uapi -I./arch/x86/include/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/kconfig.h -D__KERNEL__ -m32 -D__KERNEL__ -O2 -fno-strict-aliasing -fPIE -DDISABLE_BRANCH_PROFILING -march=i386 -mno-mmx -mno-sse -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -Wa,-mrelax-relocations=no    -DKBUILD_BASENAME='"cpuflags"'  -DKBUILD_MODNAME='"cpuflags"' -c -o arch/x86/boot/compressed/cpuflags.o arch/x86/boot/compressed/cpuflags.c

source_arch/x86/boot/compressed/cpuflags.o := arch/x86/boot/compressed/cpuflags.c

deps_arch/x86/boot/compressed/cpuflags.o := \
    $(wildcard include/config/randomize/base.h) \
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

arch/x86/boot/compressed/cpuflags.o: $(deps_arch/x86/boot/compressed/cpuflags.o)

$(deps_arch/x86/boot/compressed/cpuflags.o):
