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
"depends=";

MODULE_ALIAS("of:N*T*Csamsung,s3c2443-spi");
MODULE_ALIAS("of:N*T*Csamsung,s3c2443-spiC*");
MODULE_ALIAS("of:N*T*Csamsung,s3c6410-spi");
MODULE_ALIAS("of:N*T*Csamsung,s3c6410-spiC*");
MODULE_ALIAS("of:N*T*Csamsung,s5pv210-spi");
MODULE_ALIAS("of:N*T*Csamsung,s5pv210-spiC*");
MODULE_ALIAS("of:N*T*Csamsung,exynos4210-spi");
MODULE_ALIAS("of:N*T*Csamsung,exynos4210-spiC*");
MODULE_ALIAS("of:N*T*Csamsung,exynos5440-spi");
MODULE_ALIAS("of:N*T*Csamsung,exynos5440-spiC*");
MODULE_ALIAS("of:N*T*Csamsung,exynos7-spi");
MODULE_ALIAS("of:N*T*Csamsung,exynos7-spiC*");
MODULE_ALIAS("of:N*T*Csamsung,exynos5433-spi");
MODULE_ALIAS("of:N*T*Csamsung,exynos5433-spiC*");
