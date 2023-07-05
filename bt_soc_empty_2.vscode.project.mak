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
 -I$(COPIED_SDK_PATH)/protocol/bluetooth/inc \
 -I$(COPIED_SDK_PATH)/platform/common/inc \
 -I$(COPIED_SDK_PATH)/protocol/bluetooth/bgstack/ll/inc \
 -I$(COPIED_SDK_PATH)/hardware/board/inc \
 -I$(COPIED_SDK_PATH)/platform/bootloader \
 -I$(COPIED_SDK_PATH)/platform/bootloader/api \
 -I$(COPIED_SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/sl_cryptoacc_library/include \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/sl_cryptoacc_library/src \
 -I$(COPIED_SDK_PATH)/platform/service/device_init/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/common/inc \
 -I$(COPIED_SDK_PATH)/platform/emlib/inc \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/fem_util \
 -I$(COPIED_SDK_PATH)/app/bluetooth/common/gatt_service_device_information \
 -I$(COPIED_SDK_PATH)/app/bluetooth/common/in_place_ota_dfu \
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
# SIMPLICITY_STUDIO_METADATA=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=END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA