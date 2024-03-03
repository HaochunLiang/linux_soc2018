	.arch armv7-a
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 2	@ Tag_ABI_enum_size
	.eabi_attribute 30, 2	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 2	@ Tag_ABI_PCS_wchar_t
	.file	"pm_data-offsets.c"
@ GNU C89 (15:9-2019-q4-0ubuntu1) version 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599] (arm-none-eabi)
@	compiled by GNU C version 9.2.1 20200306, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc -I ./arch/arm/include
@ -I ./arch/arm/include/generated -I ./include -I ./arch/arm/include/uapi
@ -I ./arch/arm/include/generated/uapi -I ./include/uapi
@ -I ./include/generated/uapi -imultilib thumb/v7/nofp -D__USES_INITFINI__
@ -D __KERNEL__ -D __LINUX_ARM_ARCH__=7 -U arm -D CC_HAVE_ASM_GOTO
@ -D KBUILD_BASENAME="pm_data_offsets" -D KBUILD_MODNAME="pm_data_offsets"
@ -isystem /usr/lib/gcc/arm-none-eabi/9.2.1/include
@ -include ./include/linux/kconfig.h
@ -MD arch/arm/mach-at91/.pm_data-offsets.s.d
@ arch/arm/mach-at91/pm_data-offsets.c -mlittle-endian -mabi=aapcs-linux
@ -mfpu=vfp -marm -mfloat-abi=soft -march=armv7-a
@ -auxbase-strip arch/arm/mach-at91/pm_data-offsets.s -O2 -Wall -Wundef
@ -Wstrict-prototypes -Wno-trigraphs -Werror=implicit-function-declaration
@ -Wno-format-security -Wno-frame-address -Wformat-truncation=0
@ -Wformat-overflow=0 -Wno-int-in-bool-context
@ -Wno-address-of-packed-member -Wattribute-alias=0
@ -Wframe-larger-than=1024 -Wno-unused-but-set-variable
@ -Wunused-const-variable=0 -Wdeclaration-after-statement -Wno-pointer-sign
@ -Wno-stringop-truncation -Wno-array-bounds -Wstringop-overflow=0
@ -Wno-restrict -Wno-maybe-uninitialized -Werror=implicit-int
@ -Werror=strict-prototypes -Werror=date-time
@ -Werror=incompatible-pointer-types -Werror=designated-init
@ -Wno-packed-not-aligned -std=gnu90 -fno-strict-aliasing -fno-common
@ -fshort-wchar -fno-PIE -fno-dwarf2-cfi-asm -fno-ipa-sra -funwind-tables
@ -fno-delete-null-pointer-checks -fno-stack-protector -fomit-frame-pointer
@ -fno-var-tracking-assignments -fno-strict-overflow
@ -fno-merge-all-constants -fmerge-constants -fstack-check=no
@ -fconserve-stack -fmacro-prefix-map=./= -fverbose-asm
@ --param allow-store-data-races=0
@ options enabled:  -faggressive-loop-optimizations -falign-functions
@ -falign-jumps -falign-labels -falign-loops -fassume-phsa -fauto-inc-dec
@ -fbranch-count-reg -fcaller-saves -fcombine-stack-adjustments
@ -fcompare-elim -fcprop-registers -fcrossjumping -fcse-follow-jumps
@ -fdefer-pop -fdevirtualize -fdevirtualize-speculatively -fearly-inlining
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse -fgcse
@ -fgcse-lm -fgnu-runtime -fgnu-unique -fguess-branch-probability
@ -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
@ -findirect-inlining -finline -finline-atomics
@ -finline-functions-called-once -finline-small-functions -fipa-bit-cp
@ -fipa-cp -fipa-icf -fipa-icf-functions -fipa-icf-variables -fipa-profile
@ -fipa-pure-const -fipa-ra -fipa-reference -fipa-reference-addressable
@ -fipa-stack-alignment -fipa-vrp -fira-hoist-pressure
@ -fira-share-save-slots -fira-share-spill-slots
@ -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
@ -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
@ -fmath-errno -fmerge-constants -fmerge-debug-strings
@ -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
@ -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2 -fplt
@ -fprefetch-loop-arrays -freg-struct-return -freorder-blocks
@ -freorder-functions -frerun-cse-after-loop
@ -fsched-critical-path-heuristic -fsched-dep-count-heuristic
@ -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
@ -fsched-pressure -fsched-rank-heuristic -fsched-spec
@ -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-insns
@ -fschedule-insns2 -fsection-anchors -fsemantic-interposition
@ -fshow-column -fshrink-wrap -fshrink-wrap-separate -fsigned-zeros
@ -fsplit-ivs-in-unroller -fsplit-wide-types -fssa-backprop -fssa-phiopt
@ -fstdarg-opt -fstore-merging -fstrict-volatile-bitfields -fsync-libcalls
@ -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
@ -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
@ -ftree-copy-prop -ftree-cselim -ftree-dce -ftree-dominator-opts
@ -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
@ -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
@ -ftree-parallelize-loops= -ftree-phiprop -ftree-pre -ftree-pta
@ -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra
@ -ftree-switch-conversion -ftree-tail-merge -ftree-ter -ftree-vrp
@ -funit-at-a-time -funwind-tables -fverbose-asm -fwrapv -fwrapv-pointer
@ -fzero-initialized-in-bss -marm -mbe32 -mlittle-endian
@ -mpic-data-is-text-relative -msched-prolog -munaligned-access
@ -mvectorize-with-neon-quad

	.text
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ arch/arm/mach-at91/pm_data-offsets.c:8: 	DEFINE(PM_DATA_PMC,		offsetof(struct at91_pm_data, pmc));
	.syntax divided
@ 8 "arch/arm/mach-at91/pm_data-offsets.c" 1
	
.ascii "->PM_DATA_PMC #0 offsetof(struct at91_pm_data, pmc)"	@
@ 0 "" 2
@ arch/arm/mach-at91/pm_data-offsets.c:9: 	DEFINE(PM_DATA_RAMC0,		offsetof(struct at91_pm_data, ramc[0]));
@ 9 "arch/arm/mach-at91/pm_data-offsets.c" 1
	
.ascii "->PM_DATA_RAMC0 #4 offsetof(struct at91_pm_data, ramc[0])"	@
@ 0 "" 2
@ arch/arm/mach-at91/pm_data-offsets.c:10: 	DEFINE(PM_DATA_RAMC1,		offsetof(struct at91_pm_data, ramc[1]));
@ 10 "arch/arm/mach-at91/pm_data-offsets.c" 1
	
.ascii "->PM_DATA_RAMC1 #8 offsetof(struct at91_pm_data, ramc[1])"	@
@ 0 "" 2
@ arch/arm/mach-at91/pm_data-offsets.c:11: 	DEFINE(PM_DATA_MEMCTRL,	offsetof(struct at91_pm_data, memctrl));
@ 11 "arch/arm/mach-at91/pm_data-offsets.c" 1
	
.ascii "->PM_DATA_MEMCTRL #16 offsetof(struct at91_pm_data, memctrl)"	@
@ 0 "" 2
@ arch/arm/mach-at91/pm_data-offsets.c:12: 	DEFINE(PM_DATA_MODE,		offsetof(struct at91_pm_data, mode));
@ 12 "arch/arm/mach-at91/pm_data-offsets.c" 1
	
.ascii "->PM_DATA_MODE #20 offsetof(struct at91_pm_data, mode)"	@
@ 0 "" 2
@ arch/arm/mach-at91/pm_data-offsets.c:13: 	DEFINE(PM_DATA_SHDWC,		offsetof(struct at91_pm_data, shdwc));
@ 13 "arch/arm/mach-at91/pm_data-offsets.c" 1
	
.ascii "->PM_DATA_SHDWC #24 offsetof(struct at91_pm_data, shdwc)"	@
@ 0 "" 2
@ arch/arm/mach-at91/pm_data-offsets.c:14: 	DEFINE(PM_DATA_SFRBU,		offsetof(struct at91_pm_data, sfrbu));
@ 14 "arch/arm/mach-at91/pm_data-offsets.c" 1
	
.ascii "->PM_DATA_SFRBU #28 offsetof(struct at91_pm_data, sfrbu)"	@
@ 0 "" 2
@ arch/arm/mach-at91/pm_data-offsets.c:17: }
	.arm
	.syntax unified
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	main, .-main
	.ident	"GCC: (15:9-2019-q4-0ubuntu1) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
