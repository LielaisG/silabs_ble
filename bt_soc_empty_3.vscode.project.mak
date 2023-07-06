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
# SIMPLICITY_STUDIO_METADATA=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=END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA