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
"depends=rpmsg_core";

MODULE_ALIAS("of:N*T*Cqcom,rpm-apq8084");
MODULE_ALIAS("of:N*T*Cqcom,rpm-apq8084C*");
MODULE_ALIAS("of:N*T*Cqcom,rpm-msm8916");
MODULE_ALIAS("of:N*T*Cqcom,rpm-msm8916C*");
MODULE_ALIAS("of:N*T*Cqcom,rpm-msm8974");
MODULE_ALIAS("of:N*T*Cqcom,rpm-msm8974C*");
MODULE_ALIAS("of:N*T*Cqcom,rpm-msm8996");
MODULE_ALIAS("of:N*T*Cqcom,rpm-msm8996C*");
