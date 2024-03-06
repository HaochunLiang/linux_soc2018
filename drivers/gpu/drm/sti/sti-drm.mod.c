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

MODULE_ALIAS("of:N*T*Cst,stih416-hda");
MODULE_ALIAS("of:N*T*Cst,stih416-hdaC*");
MODULE_ALIAS("of:N*T*Cst,stih407-hda");
MODULE_ALIAS("of:N*T*Cst,stih407-hdaC*");
MODULE_ALIAS("of:N*T*Cst,stih407-dvo");
MODULE_ALIAS("of:N*T*Cst,stih407-dvoC*");
MODULE_ALIAS("of:N*T*Cst,stih407-tvout");
MODULE_ALIAS("of:N*T*Cst,stih407-tvoutC*");
MODULE_ALIAS("of:N*T*Cst,sti-display-subsystem");
MODULE_ALIAS("of:N*T*Cst,sti-display-subsystemC*");
MODULE_ALIAS("of:N*T*Cst,vtg");
MODULE_ALIAS("of:N*T*Cst,vtgC*");
MODULE_ALIAS("of:N*T*Cst,stih407-hdmi");
MODULE_ALIAS("of:N*T*Cst,stih407-hdmiC*");
MODULE_ALIAS("of:N*T*Cst,stih407-compositor");
MODULE_ALIAS("of:N*T*Cst,stih407-compositorC*");
MODULE_ALIAS("of:N*T*Cst,stih407-hqvdp");
MODULE_ALIAS("of:N*T*Cst,stih407-hqvdpC*");
