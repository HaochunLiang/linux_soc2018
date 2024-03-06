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

MODULE_ALIAS("of:N*T*Catmel,at91sam9rl-pwm");
MODULE_ALIAS("of:N*T*Catmel,at91sam9rl-pwmC*");
MODULE_ALIAS("of:N*T*Catmel,sama5d3-pwm");
MODULE_ALIAS("of:N*T*Catmel,sama5d3-pwmC*");
MODULE_ALIAS("of:N*T*Catmel,sama5d2-pwm");
MODULE_ALIAS("of:N*T*Catmel,sama5d2-pwmC*");
MODULE_ALIAS("platform:at91sam9rl-pwm");
MODULE_ALIAS("platform:sama5d3-pwm");
