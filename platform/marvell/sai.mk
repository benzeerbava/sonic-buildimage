# Marvell SAI

export MRVL_SAI_VERSION = 1.5.1
export MRVL_SAI = mrvllibsai_amd64_$(MRVL_SAI_VERSION).deb

$(MRVL_SAI)_SRC_PATH = $(PLATFORM_PATH)/sai
SONIC_MAKE_DEBS += $(MRVL_SAI)
