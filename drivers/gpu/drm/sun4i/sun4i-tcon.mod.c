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

MODULE_ALIAS("of:N*T*Callwinner,sun5i-a13-tcon");
MODULE_ALIAS("of:N*T*Callwinner,sun5i-a13-tconC*");
MODULE_ALIAS("of:N*T*Callwinner,sun6i-a31-tcon");
MODULE_ALIAS("of:N*T*Callwinner,sun6i-a31-tconC*");
MODULE_ALIAS("of:N*T*Callwinner,sun6i-a31s-tcon");
MODULE_ALIAS("of:N*T*Callwinner,sun6i-a31s-tconC*");
MODULE_ALIAS("of:N*T*Callwinner,sun8i-a33-tcon");
MODULE_ALIAS("of:N*T*Callwinner,sun8i-a33-tconC*");
MODULE_ALIAS("of:N*T*Callwinner,sun8i-v3s-tcon");
MODULE_ALIAS("of:N*T*Callwinner,sun8i-v3s-tconC*");
