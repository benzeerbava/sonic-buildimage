# Docker image for L2MCD

DOCKER_L2MCD_STEM = docker-l2mcd
DOCKER_L2MCD = $(DOCKER_L2MCD_STEM).gz
$(DOCKER_L2MCD)_PATH = $(DOCKERS_PATH)/docker-l2mcd
$(DOCKER_L2MCD)_DEPENDS += $(LIBEVENT) $(L2MCD) $(SWSS)

$(DOCKER_L2MCD)_LOAD_DOCKERS = $(DOCKER_CONFIG_ENGINE_STRETCH)
$(DOCKER_L2MCD)_DBG_IMAGE_PACKAGES = $($(DOCKER_CONFIG_ENGINE_STRETCH)_DBG_IMAGE_PACKAGES)

SONIC_DOCKER_IMAGES += $(DOCKER_L2MCD)

SONIC_INSTALL_DOCKER_IMAGES += $(DOCKER_L2MCD)

DOCKER_L2MCD_DBG = $(DOCKER_L2MCD_STEM)-$(DBG_IMAGE_MARK).gz
SONIC_DOCKER_DBG_IMAGES += $(DOCKER_L2MCD_DBG)
SONIC_STRETCH_DBG_DOCKERS += $(DOCKER_L2MCD_DBG)
SONIC_INSTALL_DOCKER_DBG_IMAGES += $(DOCKER_L2MCD_DBG)

$(DOCKER_L2MCD)_CONTAINER_NAME = l2mcd
$(DOCKER_L2MCD)_RUN_OPT += --net=host --privileged -t
$(DOCKER_L2MCD)_RUN_OPT += -v /etc/sonic:/etc/sonic:ro
$(DOCKER_L2MCD)_RUN_OPT += -v /host/warmboot:/var/warmboot
