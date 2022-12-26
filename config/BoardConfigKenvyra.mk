include vendor/kenvyra/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/kenvyra/config/BoardConfigQcom.mk
endif

include vendor/kenvyra/config/BoardConfigSoong.mk
