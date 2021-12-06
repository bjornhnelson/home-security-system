# RasPi Package

RASPI_SCRIPTS_VERSION = 'ab34281e7e6ee9ac53e56e8a32855b6c1c381e9b'
RASPI_SCRIPTS_SITE = git@github.com:cu-ecen-aeld/final-project-support-bjorn-mehul.git
RASPI_SCRIPTS_SITE_METHOD = git
RASPI_SCRIPTS_GIT_SUBMODULES = YES

define RASPI_SCRIPTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/mqtt_scripts/main_client.py $(TARGET_DIR)/root/
endef

$(eval $(generic-package))
