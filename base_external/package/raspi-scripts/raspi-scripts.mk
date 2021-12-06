# RasPi Package

RASPI_SCRIPTS_SITE = git@github.com:cu-ecen-aeld/final-project-support-bjorn-mehul.git
RASPI_SCRIPTS_VERSION = $(shell git ls-remote $(RASPI_SCRIPTS_SITE) HEAD | cut -f1)
RASPI_SCRIPTS_SITE_METHOD = git
RASPI_SCRIPTS_GIT_SUBMODULES = YES

define RASPI_SCRIPTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/mqtt_scripts/main_client.py $(TARGET_DIR)/root/
endef

$(eval $(generic-package))
