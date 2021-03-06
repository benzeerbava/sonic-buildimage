# L2MCD package
#
L2MCD_VERSION = 1.0.0
export L2MCD_VERSION

L2MCD = l2mcd_$(L2MCD_VERSION)_amd64.deb
$(L2MCD)_SRC_PATH = $(SRC_PATH)/sonic-l2mcd
$(L2MCD)_DEPENDS += $(LIBSWSSCOMMON_DEV)
$(L2MCD)_RDEPENDS += $(LIBSWSSCOMMON)
$(L2MCD)_DEPENDS += $(LIBEVENT)
SONIC_DPKG_DEBS += $(L2MCD)

#L2MCD_DBG = l2mcd-dbg_1.0.0_amd64.deb
#$(L2MCD_DBG)_DEPENDS += $(L2MCD)
#$(L2MCD_DBG)_RDEPENDS += $(L2MCD)
$(eval $(call add_derived_package,$(L2MCD)))

export L2MCD
