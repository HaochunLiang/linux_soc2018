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

MODULE_ALIAS("of:N*T*Catmel,at91rm9200-i2c");
MODULE_ALIAS("of:N*T*Catmel,at91rm9200-i2cC*");
MODULE_ALIAS("of:N*T*Catmel,at91sam9260-i2c");
MODULE_ALIAS("of:N*T*Catmel,at91sam9260-i2cC*");
MODULE_ALIAS("of:N*T*Catmel,at91sam9261-i2c");
MODULE_ALIAS("of:N*T*Catmel,at91sam9261-i2cC*");
MODULE_ALIAS("of:N*T*Catmel,at91sam9g20-i2c");
MODULE_ALIAS("of:N*T*Catmel,at91sam9g20-i2cC*");
MODULE_ALIAS("of:N*T*Catmel,at91sam9g10-i2c");
MODULE_ALIAS("of:N*T*Catmel,at91sam9g10-i2cC*");
MODULE_ALIAS("of:N*T*Catmel,at91sam9x5-i2c");
MODULE_ALIAS("of:N*T*Catmel,at91sam9x5-i2cC*");
MODULE_ALIAS("of:N*T*Catmel,sama5d4-i2c");
MODULE_ALIAS("of:N*T*Catmel,sama5d4-i2cC*");
MODULE_ALIAS("of:N*T*Catmel,sama5d2-i2c");
MODULE_ALIAS("of:N*T*Catmel,sama5d2-i2cC*");
