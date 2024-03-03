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

MODULE_ALIAS("of:N*T*Callwinner,sun5i-a10s-display-engine");
MODULE_ALIAS("of:N*T*Callwinner,sun5i-a10s-display-engineC*");
MODULE_ALIAS("of:N*T*Callwinner,sun5i-a13-display-engine");
MODULE_ALIAS("of:N*T*Callwinner,sun5i-a13-display-engineC*");
MODULE_ALIAS("of:N*T*Callwinner,sun6i-a31-display-engine");
MODULE_ALIAS("of:N*T*Callwinner,sun6i-a31-display-engineC*");
MODULE_ALIAS("of:N*T*Callwinner,sun6i-a31s-display-engine");
MODULE_ALIAS("of:N*T*Callwinner,sun6i-a31s-display-engineC*");
MODULE_ALIAS("of:N*T*Callwinner,sun8i-a33-display-engine");
MODULE_ALIAS("of:N*T*Callwinner,sun8i-a33-display-engineC*");
MODULE_ALIAS("of:N*T*Callwinner,sun8i-v3s-display-engine");
MODULE_ALIAS("of:N*T*Callwinner,sun8i-v3s-display-engineC*");
