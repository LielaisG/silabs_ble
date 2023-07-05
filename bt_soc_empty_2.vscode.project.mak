####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 14                                              #
####################################################################

BASE_SDK_PATH = C:/Users/Mesh/SimplicityStudio/SDKs/gecko_sdk
UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= gecko_sdk_4.3.0

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DBGM220PC22HNA=1' \
 '-DSL_APP_PROPERTIES=1' \
 '-DBOOTLOADER_APPLOADER=1' \
 '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' \
 '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' \
 '-DSL_BOARD_NAME="BRD4314A"' \
 '-DSL_BOARD_REV="A02"' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' \
 '-DSLI_RADIOAES_REQUIRES_MASKING=1'

ASM_DEFS += \
 '-DBGM220PC22HNA=1' \
 '-DSL_APP_PROPERTIES=1' \
 '-DBOOTLOADER_APPLOADER=1' \
 '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' \
 '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' \
 '-DSL_BOARD_NAME="BRD4314A"' \
 '-DSL_BOARD_REV="A02"' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' \
 '-DSLI_RADIOAES_REQUIRES_MASKING=1'

INCLUDES += \
 -Iconfig \
 -Iconfig/btconf \
 -Iautogen \
 -I. \
 -I$(COPIED_SDK_PATH)/platform/Device/SiliconLabs/BGM22/Include \
 -I$(COPIED_SDK_PATH)/app/common/util/app_assert \
 -I$(COPIED_SDK_PATH)/app/common/util/app_log \
 -I$(COPIED_SDK_PATH)/protocol/bluetooth/inc \
 -I$(COPIED_SDK_PATH)/platform/common/inc \
 -I$(COPIED_SDK_PATH)/protocol/bluetooth/bgstack/ll/inc \
 -I$(COPIED_SDK_PATH)/hardware/board/inc \
 -I$(COPIED_SDK_PATH)/platform/bootloader \
 -I$(COPIED_SDK_PATH)/platform/bootloader/api \
 -I$(COPIED_SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(COPIED_SDK_PATH)/hardware/driver/configuration_over_swo/inc \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/sl_cryptoacc_library/include \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/sl_cryptoacc_library/src \
 -I$(COPIED_SDK_PATH)/platform/driver/debug/inc \
 -I$(COPIED_SDK_PATH)/platform/service/device_init/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/dmadrv/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/common/inc \
 -I$(COPIED_SDK_PATH)/platform/emlib/inc \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/fem_util \
 -I$(COPIED_SDK_PATH)/app/bluetooth/common/gatt_service_device_information \
 -I$(COPIED_SDK_PATH)/app/bluetooth/common/in_place_ota_dfu \
 -I$(COPIED_SDK_PATH)/platform/service/iostream/inc \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/config \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/config/preset \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/inc \
 -I$(COPIED_SDK_PATH)/util/third_party/mbedtls/include \
 -I$(COPIED_SDK_PATH)/util/third_party/mbedtls/library \
 -I$(COPIED_SDK_PATH)/platform/service/mpu/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/nvm3/inc \
 -I$(COPIED_SDK_PATH)/platform/service/power_manager/inc \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/inc \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/common \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/protocol/ble \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/protocol/ieee802154 \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/protocol/wmbus \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/protocol/zwave \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/chip/efr32/efr32xg2x \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/efr32xg22 \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_power_manager_init \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/inc \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src \
 -I$(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager \
 -I$(COPIED_SDK_PATH)/platform/common/toolchain/inc \
 -I$(COPIED_SDK_PATH)/platform/service/system/inc \
 -I$(COPIED_SDK_PATH)/platform/service/sleeptimer/inc \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lgcc \
 -lc \
 -lm \
 -lnosys \
 $(COPIED_SDK_PATH)/protocol/bluetooth/lib/EFR32XG22/GCC/libbluetooth.a \
 $(COPIED_SDK_PATH)/platform/emdrv/nvm3/lib/libnvm3_CM33_gcc.a \
 $(COPIED_SDK_PATH)/platform/radio/rail_lib/autogen/librail_release/librail_config_bgm220pc22hna_gcc.a \
 $(COPIED_SDK_PATH)/platform/radio/rail_lib/autogen/librail_release/librail_module_efr32xg22_gcc_release.a

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c99 \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 -mcmse \
 --specs=nano.specs \
 -g

CXX_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c++11 \
 -fno-rtti \
 -fno-exceptions \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 -mcmse \
 --specs=nano.specs \
 -g

ASM_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -imacros sl_gcc_preinclude.h \
 -x assembler-with-cpp

LD_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -T"autogen/linkerfile.ld" \
 --specs=nano.specs \
 -Xlinker -Map=$(OUTPUT_DIR)/$(PROJECTNAME).map \
 -Wl,--gc-sections


####################################################################
# Pre/Post Build Rules                                             #
####################################################################
pre-build:
	# No pre-build defined

post-build: $(OUTPUT_DIR)/$(PROJECTNAME).out
	# No post-build defined

####################################################################
# SDK Build Rules                                                  #
####################################################################
# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA