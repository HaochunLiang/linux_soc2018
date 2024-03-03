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
"depends=v4l2-fwnode,media,v4l2-common,videodev";

MODULE_ALIAS("of:N*T*Csamsung,s5pv210-csis");
MODULE_ALIAS("of:N*T*Csamsung,s5pv210-csisC*");
MODULE_ALIAS("of:N*T*Csamsung,exynos4210-csis");
MODULE_ALIAS("of:N*T*Csamsung,exynos4210-csisC*");
MODULE_ALIAS("of:N*T*Csamsung,exynos5250-csis");
MODULE_ALIAS("of:N*T*Csamsung,exynos5250-csisC*");
