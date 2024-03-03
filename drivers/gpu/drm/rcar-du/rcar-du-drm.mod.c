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

MODULE_ALIAS("of:N*T*Crenesas,du-r8a7779");
MODULE_ALIAS("of:N*T*Crenesas,du-r8a7779C*");
MODULE_ALIAS("of:N*T*Crenesas,du-r8a7790");
MODULE_ALIAS("of:N*T*Crenesas,du-r8a7790C*");
MODULE_ALIAS("of:N*T*Crenesas,du-r8a7791");
MODULE_ALIAS("of:N*T*Crenesas,du-r8a7791C*");
MODULE_ALIAS("of:N*T*Crenesas,du-r8a7792");
MODULE_ALIAS("of:N*T*Crenesas,du-r8a7792C*");
MODULE_ALIAS("of:N*T*Crenesas,du-r8a7793");
MODULE_ALIAS("of:N*T*Crenesas,du-r8a7793C*");
MODULE_ALIAS("of:N*T*Crenesas,du-r8a7794");
MODULE_ALIAS("of:N*T*Crenesas,du-r8a7794C*");
MODULE_ALIAS("of:N*T*Crenesas,du-r8a7795");
MODULE_ALIAS("of:N*T*Crenesas,du-r8a7795C*");
MODULE_ALIAS("of:N*T*Crenesas,du-r8a7796");
MODULE_ALIAS("of:N*T*Crenesas,du-r8a7796C*");
