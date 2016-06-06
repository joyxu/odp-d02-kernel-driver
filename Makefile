ifneq ($(KERNELRELEASE),)
# kbuild part of makefile
obj-m := pv660_hns.o
pv660_hns-y := pv660_hns_drv.o pv660_ethtool.o
ccflags-y := -I/home/joyx/develop/kernel-dev/drivers/net/ethernet/hisilicon/hns/

else
# normal makefile
KDIR ?= /home/joyx/develop/build

default:
	$(MAKE) -C $(KDIR) M=$$PWD modules

# Module specific targets
clean:
	$(MAKE) -C $(KDIR) M=$$PWD clean
endif

