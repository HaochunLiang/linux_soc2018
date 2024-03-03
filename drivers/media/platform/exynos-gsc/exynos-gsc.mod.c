#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);
MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

MODULE_INFO(intree, "Y");

#ifdef CONFIG_RETPOLINE
MODULE_INFO(retpoline, "Y");
#endif

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=videodev,v4l2-mem2mem,videobuf2-v4l2,videobuf2-core,v4l2-common,videobuf2-dma-contig";

MODULE_ALIAS("of:N*T*Csamsung,exynos5-gsc");
MODULE_ALIAS("of:N*T*Csamsung,exynos5-gscC*");
MODULE_ALIAS("of:N*T*Csamsung,exynos5433-gsc");
MODULE_ALIAS("of:N*T*Csamsung,exynos5433-gscC*");
