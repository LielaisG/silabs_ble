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
 '-DMGM240PB22VNA=1' \
 '-DSL_APP_PROPERTIES=1' \
 '-DBOOTLOADER_APPLOADER=1' \
 '-DSL_BOARD_NAME="BRD4316A"' \
 '-DSL_BOARD_REV="A02"' \
 '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' \
 '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' \
 '-DSLI_RADIOAES_REQUIRES_MASKING=1'

ASM_DEFS += \
 '-DMGM240PB22VNA=1' \
 '-DSL_APP_PROPERTIES=1' \
 '-DBOOTLOADER_APPLOADER=1' \
 '-DSL_BOARD_NAME="BRD4316A"' \
 '-DSL_BOARD_REV="A02"' \
 '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' \
 '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' \
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
 -I$(SDK_PATH)/platform/Device/SiliconLabs/MGM24/Include \
 -I$(SDK_PATH)/app/common/util/app_assert \
 -I$(SDK_PATH)/protocol/bluetooth/inc \
 -I$(SDK_PATH)/platform/common/inc \
 -I$(SDK_PATH)/protocol/bluetooth/bgstack/ll/inc \
 -I$(SDK_PATH)/hardware/board/inc \
 -I$(SDK_PATH)/platform/bootloader \
 -I$(SDK_PATH)/platform/bootloader/api \
 -I$(SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(SDK_PATH)/hardware/driver/configuration_over_swo/inc \
 -I$(SDK_PATH)/platform/driver/debug/inc \
 -I$(SDK_PATH)/platform/service/device_init/inc \
 -I$(SDK_PATH)/platform/emdrv/common/inc \
 -I$(SDK_PATH)/platform/emlib/inc \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/fem_util \
 -I$(SDK_PATH)/app/bluetooth/common/gatt_service_device_information \
 -I$(SDK_PATH)/platform/service/hfxo_manager/inc \
 -I$(SDK_PATH)/app/bluetooth/common/in_place_ota_dfu \
 -I$(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/config \
 -I$(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/config/preset \
 -I$(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/inc \
 -I$(SDK_PATH)/util/third_party/mbedtls/include \
 -I$(SDK_PATH)/util/third_party/mbedtls/library \
 -I$(SDK_PATH)/platform/service/mpu/inc \
 -I$(SDK_PATH)/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart \
 -I$(SDK_PATH)/platform/emdrv/nvm3/inc \
 -I$(SDK_PATH)/platform/peripheral/inc \
 -I$(SDK_PATH)/platform/service/power_manager/inc \
 -I$(SDK_PATH)/platform/security/sl_component/sl_psa_driver/inc \
 -I$(SDK_PATH)/platform/radio/rail_lib/common \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/ble \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/ieee802154 \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/wmbus \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/zwave \
 -I$(SDK_PATH)/platform/radio/rail_lib/chip/efr32/efr32xg2x \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/efr32xg24 \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_power_manager_init \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti \
 -I$(SDK_PATH)/platform/security/sl_component/se_manager/inc \
 -I$(SDK_PATH)/platform/security/sl_component/se_manager/src \
 -I$(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager \
 -I$(SDK_PATH)/platform/common/toolchain/inc \
 -I$(SDK_PATH)/platform/service/system/inc \
 -I$(SDK_PATH)/platform/service/sleeptimer/inc \
 -I$(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src \
 -I$(SDK_PATH)/platform/service/udelay/inc

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lgcc \
 -lc \
 -lm \
 -lnosys \
 $(SDK_PATH)/protocol/bluetooth/lib/EFR32XG24/GCC/libbluetooth.a \
 $(SDK_PATH)/platform/emdrv/nvm3/lib/libnvm3_CM33_gcc.a \
 $(SDK_PATH)/platform/radio/rail_lib/autogen/librail_release/librail_config_mgm240pb22vna_gcc.a \
 $(SDK_PATH)/platform/radio/rail_lib/autogen/librail_release/librail_module_efr32xg24_gcc_release.a

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
$(OUTPUT_DIR)/sdk/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.o: $(SDK_PATH)/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.o

$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o: $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o

$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o: $(SDK_PATH)/hardware/board/src/sl_board_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/board/src/sl_board_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/board/src/sl_board_init.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o

$(OUTPUT_DIR)/sdk/hardware/driver/configuration_over_swo/src/sl_cos.o: $(SDK_PATH)/hardware/driver/configuration_over_swo/src/sl_cos.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/driver/configuration_over_swo/src/sl_cos.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/configuration_over_swo/src/sl_cos.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/configuration_over_swo/src/sl_cos.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/configuration_over_swo/src/sl_cos.o

$(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o: $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o

$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o: $(SDK_PATH)/platform/bootloader/api/btl_interface.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/bootloader/api/btl_interface.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/api/btl_interface.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o

$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o: $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o

$(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.o: $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o: $(SDK_PATH)/platform/common/src/sl_assert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_assert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o: $(SDK_PATH)/platform/common/src/sl_slist.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_slist.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o: $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/MGM24/Source/startup_mgm24.o: $(SDK_PATH)/platform/Device/SiliconLabs/MGM24/Source/startup_mgm24.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/MGM24/Source/startup_mgm24.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/MGM24/Source/startup_mgm24.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/MGM24/Source/startup_mgm24.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/MGM24/Source/startup_mgm24.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/MGM24/Source/system_mgm24.o: $(SDK_PATH)/platform/Device/SiliconLabs/MGM24/Source/system_mgm24.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/MGM24/Source/system_mgm24.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/MGM24/Source/system_mgm24.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/MGM24/Source/system_mgm24.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/MGM24/Source/system_mgm24.o

$(OUTPUT_DIR)/sdk/platform/driver/debug/src/sl_debug_swo.o: $(SDK_PATH)/platform/driver/debug/src/sl_debug_swo.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/driver/debug/src/sl_debug_swo.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/debug/src/sl_debug_swo.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/debug/src/sl_debug_swo.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/debug/src/sl_debug_swo.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.o: $(SDK_PATH)/platform/emlib/src/em_burtc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_burtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_burtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o: $(SDK_PATH)/platform/emlib/src/em_cmu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_cmu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_cmu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o: $(SDK_PATH)/platform/emlib/src/em_core.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_core.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_core.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o: $(SDK_PATH)/platform/emlib/src/em_emu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_emu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_emu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o: $(SDK_PATH)/platform/emlib/src/em_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.o: $(SDK_PATH)/platform/emlib/src/em_ldma.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_ldma.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_ldma.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o: $(SDK_PATH)/platform/emlib/src/em_msc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_msc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_msc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.o: $(SDK_PATH)/platform/emlib/src/em_prs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_prs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_prs.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_se.o: $(SDK_PATH)/platform/emlib/src/em_se.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_se.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_se.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_se.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_se.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o: $(SDK_PATH)/platform/emlib/src/em_system.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_system.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_system.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o: $(SDK_PATH)/platform/emlib/src/em_timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o: $(SDK_PATH)/platform/emlib/src/em_usart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_usart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o

$(OUTPUT_DIR)/sdk/platform/peripheral/src/peripheral_sysrtc.o: $(SDK_PATH)/platform/peripheral/src/peripheral_sysrtc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/peripheral/src/peripheral_sysrtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/peripheral/src/peripheral_sysrtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/peripheral/src/peripheral_sysrtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/peripheral/src/peripheral_sysrtc.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/fem_util/sl_fem_util.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/fem_util/sl_fem_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/fem_util/sl_fem_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/fem_util/sl_fem_util.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/fem_util/sl_fem_util.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/fem_util/sl_fem_util.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_sequencer/sl_rail_util_sequencer.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_sequencer/sl_rail_util_sequencer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_sequencer/sl_rail_util_sequencer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_sequencer/sl_rail_util_sequencer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_sequencer/sl_rail_util_sequencer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_sequencer/sl_rail_util_sequencer.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_hash.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_hash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_hash.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_signature.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_signature.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_signature.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_util.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_util.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_util.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_util.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.o: $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.o: $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.o: $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.o: $(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_protocol_crypto/src/sli_radioaes_management.o: $(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src/sli_radioaes_management.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src/sli_radioaes_management.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src/sli_radioaes_management.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_protocol_crypto/src/sli_radioaes_management.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_protocol_crypto/src/sli_radioaes_management.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s2.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s2.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_mgm24.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_mgm24.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_mgm24.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_mgm24.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_mgm24.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_mgm24.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfrco.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfrco.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfrco.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfrco.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfrco.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfrco.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s2.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o

$(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager.o: $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager.o

$(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.o: $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.o

$(OUTPUT_DIR)/sdk/platform/service/mpu/src/sl_mpu.o: $(SDK_PATH)/platform/service/mpu/src/sl_mpu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/mpu/src/sl_mpu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/mpu/src/sl_mpu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/mpu/src/sl_mpu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/mpu/src/sl_mpu.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager.o: $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_debug.o: $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_debug.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_debug.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_debug.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_debug.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_debug.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_hal_s2.o: $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_hal_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_hal_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_hal_s2.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o: $(SDK_PATH)/platform/service/system/src/sl_system_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/system/src/sl_system_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/system/src/sl_system_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o: $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o: $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o: $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(ASMFLAGS) -c -o $@ $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
ASMDEPS_S += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_apploader_util_s2.o: $(SDK_PATH)/protocol/bluetooth/src/sl_apploader_util_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sl_apploader_util_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sl_apploader_util_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_apploader_util_s2.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_apploader_util_s2.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_bt_stack_init.o: $(SDK_PATH)/protocol/bluetooth/src/sl_bt_stack_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sl_bt_stack_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sl_bt_stack_init.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_bt_stack_init.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_bt_stack_init.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_accept_list_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_accept_list_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_accept_list_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_accept_list_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_accept_list_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_accept_list_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_advertiser_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_advertiser_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_advertiser_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_advertiser_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_advertiser_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_advertiser_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_connection_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_connection_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_connection_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_connection_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_connection_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_connection_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_dynamic_gattdb_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_dynamic_gattdb_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_dynamic_gattdb_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_dynamic_gattdb_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_dynamic_gattdb_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_dynamic_gattdb_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_l2cap_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_l2cap_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_l2cap_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_l2cap_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_l2cap_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_l2cap_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_pawr_advertiser_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_pawr_advertiser_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_pawr_advertiser_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_pawr_advertiser_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_pawr_advertiser_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_pawr_advertiser_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_periodic_adv_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_periodic_adv_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_periodic_adv_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_periodic_adv_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_periodic_adv_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_periodic_adv_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_periodic_advertiser_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_periodic_advertiser_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_periodic_advertiser_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_periodic_advertiser_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_periodic_advertiser_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_periodic_advertiser_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_sync_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_sync_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_sync_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_sync_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_sync_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_sync_config.o

$(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o: $(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
CDEPS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.d
OBJS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher.o: $(SDK_PATH)/util/third_party/mbedtls/library/cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher_wrap.o: $(SDK_PATH)/util/third_party/mbedtls/library/cipher_wrap.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/cipher_wrap.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/cipher_wrap.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher_wrap.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher_wrap.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/constant_time.o: $(SDK_PATH)/util/third_party/mbedtls/library/constant_time.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/constant_time.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/constant_time.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/constant_time.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/constant_time.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform.o: $(SDK_PATH)/util/third_party/mbedtls/library/platform.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/platform.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/platform.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform_util.o: $(SDK_PATH)/util/third_party/mbedtls/library/platform_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/platform_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/platform_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform_util.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_aead.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_aead.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_aead.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_cipher.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_client.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_client.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_client.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_client.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_driver_wrappers.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_driver_wrappers.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_driver_wrappers.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_driver_wrappers.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_driver_wrappers.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_driver_wrappers.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ecp.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ecp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ecp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ecp.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ecp.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ecp.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_hash.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_hash.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_hash.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_mac.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_mac.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_mac.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_rsa.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_rsa.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_rsa.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_rsa.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_rsa.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_rsa.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_se.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_se.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_se.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_se.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_se.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_se.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_slot_management.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_slot_management.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_slot_management.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_slot_management.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_slot_management.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_slot_management.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_storage.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_storage.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_storage.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_storage.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/threading.o: $(SDK_PATH)/util/third_party/mbedtls/library/threading.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/threading.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/threading.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/threading.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/threading.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA