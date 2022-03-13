
##############################################################
#
# AESD_CHAR
#
##############################################################

# references your assignment 3 git contents
AESD_CHAR_VERSION = 2a2c6388d6bf4b4ddbc37971706499cc3c618c3a 
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_CHAR_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-jmichael16.git
AESD_CHAR_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES
AESD_CHAR_MODULE_SUBDIRS = aesd-char-driver 

define AESD_CHAR_INSTALL_TARGET_CMDS
	# install load/unload for aesd-char driver kernel modules 
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin/
endef

$(eval $(kernel-module))
$(eval $(generic-package))
