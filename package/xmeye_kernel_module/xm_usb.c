#include <linux/module.h>
#include <linux/kernel.h>

MODULE_LICENSE("GPL");

static int myinit(void)
{
    printk("hello inits\n");
    return 0;
}

static void myexit(void)
{
    printk("hello exits\n");
}

module_init(myinit);
module_exit(myexit);