# RasPi Package

#RASPI_SCRIPTS_VERSION = '#COMMIT VERSION NUMBER'
RASPI_SCRIPTS_SITE = /home/bjornnelson/Desktop/AESD/final-project-bjornhnelson/source_code
RASPI_SCRIPTS_SITE_METHOD = local
#RASPI_SCRIPTS_GIT_SUBMODULES = YES

#RASPI_SCRIPTS_SOURCE = /home/bjornnelson/Desktop/AESD/final-project-bjornhnelson/source_code

define RASPI_SCRIPTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define RASPI_SCRIPTS_INSTALL_TARGET_CMDS
    $(INSTALL) -m 0755 $(@D)/hello $(TARGET_DIR)/usr/bin
    $(INSTALL) -m 0755 $(@D)/Makefile $(TARGET_DIR)/root/
	$(INSTALL) -m 0755 $(@D)/hello.c $(TARGET_DIR)/root/
	$(INSTALL) -m 0755 $(@D)/captureImages.py $(TARGET_DIR)/root/
	$(INSTALL) -m 0755 $(@D)/main.py $(TARGET_DIR)/root/
	$(INSTALL) -m 0755 $(@D)/pub.py $(TARGET_DIR)/root/
endef

$(eval $(generic-package))
