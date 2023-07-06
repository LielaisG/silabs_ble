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
 -I$(SDK_PATH)/app/common/util/app_log \
 -I$(SDK_PATH)/app/common/util/app_timer \
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
 -I$(SDK_PATH)/platform/emdrv/dmadrv/inc \
 -I$(SDK_PATH)/platform/emdrv/common/inc \
 -I$(SDK_PATH)/platform/emlib/inc \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/fem_util \
 -I$(SDK_PATH)/app/bluetooth/common/gatt_service_device_information \
 -I$(SDK_PATH)/app/bluetooth/common/health_thermometer \
 -I$(SDK_PATH)/platform/service/hfxo_manager/inc \
 -I$(SDK_PATH)/platform/driver/i2cspm/inc \
 -I$(SDK_PATH)/app/bluetooth/common/in_place_ota_dfu \
 -I$(SDK_PATH)/platform/service/iostream/inc \
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
 -I$(SDK_PATH)/app/bluetooth/common/sensor_rht \
 -I$(SDK_PATH)/app/bluetooth/common/sensor_select \
 -I$(SDK_PATH)/hardware/driver/si70xx/inc \
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
$(OUTPUT_DIR)/sdk/app/bluetooth/common/health_thermometer/sl_health_thermometer.o: $(SDK_PATH)/app/bluetooth/common/health_thermometer/sl_health_thermometer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/app/bluetooth/common/health_thermometer/sl_health_thermometer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/health_thermometer/sl_health_thermometer.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/health_thermometer/sl_health_thermometer.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/health_thermometer/sl_health_thermometer.o

$(OUTPUT_DIR)/sdk/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.o: $(SDK_PATH)/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.o

$(OUTPUT_DIR)/sdk/app/bluetooth/common/sensor_rht/sl_sensor_rht.o: $(SDK_PATH)/app/bluetooth/common/sensor_rht/sl_sensor_rht.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/app/bluetooth/common/sensor_rht/sl_sensor_rht.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/sensor_rht/sl_sensor_rht.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/sensor_rht/sl_sensor_rht.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/sensor_rht/sl_sensor_rht.o

$(OUTPUT_DIR)/sdk/app/bluetooth/common/sensor_select/sl_sensor_select.o: $(SDK_PATH)/app/bluetooth/common/sensor_select/sl_sensor_select.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/app/bluetooth/common/sensor_select/sl_sensor_select.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/sensor_select/sl_sensor_select.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/sensor_select/sl_sensor_select.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/sensor_select/sl_sensor_select.o

$(OUTPUT_DIR)/sdk/app/common/util/app_log/app_log.o: $(SDK_PATH)/app/common/util/app_log/app_log.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/app/common/util/app_log/app_log.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/common/util/app_log/app_log.c
CDEPS += $(OUTPUT_DIR)/sdk/app/common/util/app_log/app_log.d
OBJS += $(OUTPUT_DIR)/sdk/app/common/util/app_log/app_log.o

$(OUTPUT_DIR)/sdk/app/common/util/app_timer/app_timer.o: $(SDK_PATH)/app/common/util/app_timer/app_timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/app/common/util/app_timer/app_timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/common/util/app_timer/app_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/app/common/util/app_timer/app_timer.d
OBJS += $(OUTPUT_DIR)/sdk/app/common/util/app_timer/app_timer.o

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

$(OUTPUT_DIR)/sdk/hardware/driver/si70xx/src/sl_si70xx.o: $(SDK_PATH)/hardware/driver/si70xx/src/sl_si70xx.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/driver/si70xx/src/sl_si70xx.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/si70xx/src/sl_si70xx.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/si70xx/src/sl_si70xx.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/si70xx/src/sl_si70xx.o

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

$(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o: $(SDK_PATH)/platform/common/src/sl_string.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_string.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_string.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o

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

$(OUTPUT_DIR)/sdk/platform/driver/i2cspm/src/sl_i2cspm.o: $(SDK_PATH)/platform/driver/i2cspm/src/sl_i2cspm.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/driver/i2cspm/src/sl_i2cspm.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/i2cspm/src/sl_i2cspm.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/i2cspm/src/sl_i2cspm.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/i2cspm/src/sl_i2cspm.o

$(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o: $(SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o

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

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_i2c.o: $(SDK_PATH)/platform/emlib/src/em_i2c.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_i2c.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_i2c.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_i2c.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_i2c.o

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

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdlib_config.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_stdlib_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_stdlib_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_stdlib_config.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdlib_config.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdlib_config.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o

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
# SIMPLICITY_STUDIO_METADATA=eJztvQuT3DaWJvpXHIqJG/uwklVZVbKstbvDLcle7VotXZU83ROjDgaSRGayi68mmVUld/R/vwAIvgESjwOmtHdn3JIyk/i+DwdvEDjnn0/ef3j3v16//Ojfvvvtw8vXt09ePPnhj49J/M09LsooS3/89ORyc/HpyTc4DbIwSg/ki98+/vz0+acnf/zDp+JT+kNeZH/HQfUNSZSWLx7LiDxxrKr8hec9PDxsHq42WXHwthcXl95f3/56Gxxxgp5GaVmhNMAEmKR4UbJvf80CVNWc6SmOv+mhlFGMduUmyBKvLL3b6hRG2QYHWUERiIIcF9Xn24D8TRJzRZ+eMIHffPPDPotDXHyTooT+jE5VdsBp+zN9IIpx8/MBVZUf7jYBQT4VNDf01xfeyxfeX7LizruN4ijI0l+JHvLvJCefIsLNJHn3N/4DeajMUYC9XeWXWeDjJK8++1ce5/V6BN68hKNrCUephDL2d/EJV1lWHd2ZYsyiIsaZUcYsM2IyVIR+iPfoFFd+lEaVWxMJ6eTyUE5pWFPyq885dmoyEZlE2oePr/2XWZJnKU6r0p2qKY/cVkHznE/ygOLs4NRYQja5uBDfRwFmJe4HcRbclU7rmZhOLg/f05wcURrGuHBqtwmTqiiX5powyUVF26DME/c9xYhHQVA9DDtsjBKyGWlZWRUYJdyyjqUJyDSkOS1LAZmCNNZ6VypXOaeq0FOJin7SVQwqYzYVvZ6NBcxS0ZGf7HBYxSUZddJ9dPA5qku5c5zqQqsCpeU+K5KzSBayy6tGnj3gwk9Qig7k7zXGHSnjjIXzEq1aDcR8CwJ3pyiuonR1oXJeieA4Su9wQb/ZxKErdSMSiZRNUARcOP2nKzETmkbOD169uBYvtesUg5X24PddRZ/o/T7K3RGjuDr61REXSZbgitTzxySGzmSt0qvFeDJOTyaS1Jw8JrB+ViE/3J/cSxQzSgWy1X6NcCrYSm3TGN6lyhnaXmUe1p9p/5rgJCs+N3UPvC/gkkVE8j4/edze+PsYlUe/PJ6qMHtI+dC8gkwFbony9D65arcRHCuVcEmUseGi+JxXmWtdQia1FXgYhMEKBTxDqaYz3heBczsucCps5K2gUMQlV3bcP2bttMq9OAnd0q4jebIqsngN60n4JApRnvtxdnAtbEojt1iBotg/VeSPEv/jhMmSaY2CnWdVbBkpDtiW6sqNZEo7014mE6U1Ws0c6Vz/uDsd/PJhnX5xyrW4E1fitMzWMKCMb6ZVo7LE7uc2Qia53coY47yKklVqnZBMdU/AvTwZ30xfQ3eRhouINbqaWVbV2c3j+pObR4W2HCYoLO5dS5uwqIx+pOquOu4N+WZ6Fv7mPsLlGr2LkE1lPEbhPU1XrtKYF2gVNqnr5eB9kCVrjCezrGptGidr9D5yRqU2NOhj63ekazapOXo1Kx/X7zmPSj3nMKNoXbuiZX27ilTzlEw193TgCvbupAmZ5Fbb46TOhXuLCagkunASRzufHs3iM2HH4mb4ZnbwBu98nO7XTZiWVfEmtJ64CaHa9n6UkN5Ido6ODAphQvqB5HCxydMDdCYYtzchkRi3e+5yDTGXimK2a4jZKoq5WkPMlaKY6zXEXA/FzFf2Aw7uMr8M7/zrzRU9Eit7qUXWNxV9fzx6rTV45hVrcIMnJs/0sjl6cPLo21/ebq8nD00Rs1MxYRW8MCorMpU75X5ySLbXonfZv5E5aem9xeVxWgC3r/536bXG8hpreHWWB4XHZHu1Km9C6i3K/FxWZFhaV+WIcypy8kZLUhhv0iA+hQqlwbgu8t12e58i0WgAmk8uy5uwLhYHMUs9jqymccC4qI/lyEdBkq9rxJZSVaH4SJFLgeOjRLP6dqcCJSsrbDnVNVbB+hprTkWNQXJaWSFnVNRHXz6uLLChVFVIUNN9trbIjlVVZ4JIqjIoorzKhCelXcqdkKuqzuN4ba2cUlEhXr0FYa0WhNme2NoSW1JFlfuyCNZuQy2nosZDHhRrd0Ytp7LGaG0zNpQaCv08W71KDngVtR7369fKllNZ4+P6Eh91FEbbtVsNZ1TVh1afYzSUqgoDFBzXW9KMSRVV3uHPZYCEZ6UdyuyxKuqMyWxkZZENpYbCxx1ae5bWp9VUSo9ZRunqi0YRvapyzM5SrC24Y1XVeYYxKNYcg+L1x6BYbwxKUBTvsseVRfZYVXXm6Lhbf2ujT6uqtFx70OSMqvru195i44yK+vIgXXsK3FCqKizW7s45o7o+v4wOKYrPoLPPrKi3DApUBccchSvLHRKrqsXn6TMHvKpaV9+DKbX2YEoyRRWf2HApsSVVV7n+hnVHqqjyHLM23Tnb6RyTtpPurO0cG4O6+4L3IVq7RjaUigofQrG/FocKG0q9l9NraRyTKr+dFn4t+FL01fjKb5Jk6fzJhigNBCcahmehUJUlEVj9q1V5hNgbYI8NNPEmk57A1gNDDQ3ykoIDPXHCnbG5UTJmWFJUX9JwVDIt9pKKOp0bFR32koqyKqIUrA8aquiwF1XEUemoQFroZUug6gS2GBhbosH2ljqoSV9TFgp9TV3rgI4Qce2E2BtgK9YlJyo6bLW65EZEA61filWWxcERReOBRam4ZU4FgHPZamzy27FMjC4ZhZeHSamDhAIf4EeILku8JU7IBDMMsa1XEaam6BAEfl7gqJ40uVY2ZVOqDUaTr12WVXGGyDfzE7Dhbaj5/nH4LFSb6ZSOrmZ5Uz797gLl0XymBhctnOQp8iYcs13v8OpHWWUFOqyirM81q7Dv6bNXQEDNZyRRTrZoRVwUGVmNw7VsgfUGHOrl6lDRgEOjpuWoKOE2dWYrWkdl0BLWENjjWlRY4BLT68xwxw8F0oYki/3g8gDx8u3tm9v5seElc6o9PzORn10f2ClIyqhkTm8jiYdYEzuxPHhUZrvvMSVamAXUCYCX1VJhM4vrka7qd+ZwBT+CLecEooYkSpYikxjnVuIcS3roRb8gubpyqafPsaAnyU8+KpL75w71DDjczR7DIrpfmjmyK5Ywi7DWTwrULKfW7zHcZg02IHG5DOuIgOrBIDd8LTEgMa0I0wwylzAwhVpjAZdoDdoUaUfhsjw5C2xh8ozw0uwo3LVponX5pmHvyv5SLVBtDBNP8kCG5Pnxegxd4xCRLm8HjB3urSxVfudlwWXGyjqlVx+WfE6srFN+QnrRaeLKSmdeGi95QFpdqYlN03u4F3iKQhtKs5FBdd4yctBZbqHGO1Eu24mMkFW711hfbUeq33fAXu5WFDwkNulH1tXbcur3I+vXhh6rQW+yrtaGEmym3ff5CjPf7iNCW6eP3ZhnzLdchgM/t0cUO6hyS0J7tIt6o2FKtjmYIrCLsDOSZ5hdLnQGJeoyl3y4HvNplsgKEqeEcEtt7i0PaLHN0aDbU4Pbrrh7PMsNvvUIWOAKFQdc+WVFWNcSKaDV0EzS1O7E6lAXK0mesGooPiG4oyuLQhsyHX3lqgJLiULQvaGmPQD3RW2umg2iHo9xHV5J45RVtw6vJfQkPQY9GXjWFChg025lq5lQdpTceGBM8hPQ0a78BN3ZEMj2SFeN7vQ8Vw6+s0cz0JyTyoW7eMblNvBLC1OCA0joshyAN6U6YVxueEN/vOy9zPpSO15dwW7WYQqKtVZiw6R5Ed2jCuwkyJzoGWqXTX9YD53mk3cHE0azmr+61I5XtxqtoVVACdbh1ld8YHpafl1IFpbYxiw1dHvye0i0XMl4grzIAlyWPmJRaVbROKV02eL7hgGumDx3zRWKIZFpCayhcUoJ13jaOC5ADajFA6+bLXJ3e6LPpVCAXcwaNujWl31XlDmi1VZc+9NcW3DLqq139XowZFUYCIdJwRvzWKqI0Gln2rUQd1lr78X1ubRs71zcmAys+zyFOEafYbrOGgu6udSoTVPpOJYbc/0sO2b5LGFnUW/dSxvRuWwc3BbAdY9nijeKjsPdgTachMX9wnE2FiMLoJrWQFB1lCnnAbxYNejgnRU8pwAq9UEOaJl38GB9jNB/gEnWMeQVoDrnvVvJWHr5xzTjNGIyQJ0dBV6mgv06lDxsPaY8rBbPEy50vCwxncawiNYuFQ5IVFTRE6QuBTX4ztp+v2Bg2wHLCG0FYwoFuzpUoqjAP+AUF3BHE0U26VEotgCXaiRz7/m26FZPR6LcFh0KavDN2mIc7ZbaInmEEb18e3XFZnsIPDOEwhPRuJyKTXOu630DJ7DrfKaJdbJ95NnbnORBGhjDhQCOu0ifFWBXvYf8HHhJAHaUf6yWf+bG3gV/A7wkgDotd8HPcZfomYtqF/wN8JIA6t7VBT/HXaKnvkdd0HPcJfrSTeMrlZpeventRkALvSQCdOtyoEG6PTmWAHpMbCBBciRM6bjmkqO6dpABm5xQ4WyBmcgDSk3Gj2ME5nB5oKABVhk/nfCL75wJ6NnlfwS4zhmq6MEvONCKfFf2GGIv2QTWS9/AHopO+lgNBrv4OWoZy65g2PQH0kfgsE6ouQgkTxYo2Z9SNz1ED3tJBrCvi4EMVeeRzYzUTYEUy45b+HPwOwAjIXPrf9Hc24UOyX1d4dzbBb8sNpVo7u2CXxKISDj3dsEvizsjmnu74JeEbBDQuxw7h/AqCwEXKiTBDQQLARfspVLHBOuofihA6o5eshpxJIJDq4lw2klPKdSWSC60yN/TC5dILiRIzvMb7QoWiNDO7woWKIp90a7pJJL66SBw+Tp5bk+zUEWxQmTz2G8ehlprsvx6TZa8WrPXsHgjxulu94xCoKLWUCjej1eMaJ6jp0GW8sng1KuoIAXeF1fbx4Mwdr3IMiwPVKifIz84Ffe49C8vwh1YjyU21TBjXqvaW5IkKm21XG2/vFxt53IlrSOj7FK4jtRnpG5b4iibMgGLDVOYcM0CkglQUk6L0K8+5/hcykUClJWfU/SsXtWusdeeBtcYhC63FvqICYDb9jPH7CkoUxnxZjGcFrpV7qCqRDX1Vr1gpSpardCryBNxaxYrSbRWOYoEA5VUif9xwmkguD4wn/023Vql1hJ6ch3KBlE7BSE5uDcyC9XiqCbw03kNw8K5EpYs2buaY/XENCwqguqt9dq9uE+PGILth8zoE5OqyGXj+QoKWx4VUXuMqlOxiq4+ldnZobzIqizIREvXcWyHWORvW2QA8qSrzpar9QiF1+cy71wjjPHzi+3ljXgNOM1dl8B1JjsmT8BsnuWHZHeSLY/HuWXPus4oI/GGfObZ+/0B3atWVfas6+wxEm/IBz34HaN8uQmzhYTOvsijyr4IyxgV4Jc5DqI93JbpuOcjHPU2QbtZ8OiJ2bW2CKwsj05VdsAKm4QkB0xrgWOMSoUK2iSoPdrUDiEv8t12e58iyDOcIyvzDHkjvZ6KnMVJeQOSZOEpxn6758OiFHGmM+VrSZJdizV0nh0QO1TjG2+TS8XsDVeW4nTRfTb1wLLDYRWXfnnK86wQrf4nE2ta4CorjqgFR0FALFcg2EvbtTW8foa9aY68WrA3p0dh9dglzpI0ymkoFLio7TZ5GclRykpeoi+mTERazEd78ZWk6WKYC4K78KmY8cZxU0evsnNBbRQUn/MK0G2hnuChAuVKdlbRYwkWqwLh9SZ5rVq7OTXetDr6xRJCmHSDcDextKT2uBd1BkFyNp097mWdCQrOJ7RHvtw2Md82Ts4xgrGqOlawrPmILs9m3T65itLtzbNzau3Rq6i9udyeU22PflHt4Yx9wUGjL8DB33N0h8+mdcSvOcM40+A1VKA7wziP6LEEVUvfo/gEtyNsYulOAfDWE8cXBm8TPa42X68NXRVwAcmlRuvUD6aRDbdyxawxgL3Z6WkeSdCVzi8VnFd8J0JJPpla8CMTfohznIY4DQDjROtkYkaKala4DXanKK6i1L/Dn8+VE4kSzYyQZP2Z31mzMtVikBnSk1FXrKDeIE0zM9SimRmEUXjeLDQKNIWTlc95dXMBmrLL6JCyl7XnFT+QoZmFIMqPkB4GTfR3GlTFVwVKyxwVBP2LyMisHotMHQEdGNln6Sj1dKScoTP2UDNqLDJ0vp5LLsYkO1/EODgvSDVbWY7+cfoChhahDs1MfBHFItViViJn7allUsyycsbuTCxEde8iqkqfuTdbXfyE3sULneFxuBKpHHlpYuORXuhUVjj0yyoryMLC+QZPz0R0b4d89Oa0KN3/ifwvKTtLehSyxA6SnkN7S2xzQ0m8HbJybqQidLeUoA/DGmZg7qCsMAuyvZwzZGNGisma/zw5GCkwW3meVXqnwW7b6KyZmGqx29A7e2Z0XytPdnLOmgMuQHNCSV3u0OI7V28kkqGZBdCLG2byZ+50LC+Bz10EUi0mmTlnYQh1QL+hbE6fwL2e9DtMx8uilqeNvzJgVlnEdSlAHU/oC9byQtFLtsouwJxurbV/PyFBLrIcMMyItvSeAk3tK2wozwnX2EHuJ1t1F2xOv9EW2BjgiNIwjpwfgljKR1+GZi7Weu81lwXdl179tKiqcFmduzKNVKiO8k3yrIQMt6WkXshvotvfkdlBgqvz52CoxP3h8t5Iv1bOm+hiA2bNFhPifZQ6n1DOaO4r0NS+xlR4TrnOomQysTqfbLnvrvn2vdLu4Fi6VIOm1dt9anY66nzmn+jQLYcG4Jzl0Neguz44Egn8YuoZi2EsQzcXZ9dvrHyN7dlZ5Tp7s6LV0fmk9xSYrM/OJ/wojZ+ksz47n36jrXDpwui8+ejLMF6fnS8LAw0W67Pz5WCkwsEVC+5MhN89gbxnMUT2mdsEtMYJ+iFxdxdgRpDSxKZJsOrJc0lmJFrUXqMPMd3v0KsViPIEU5T3c+VBouUMTj1yMubQ2Qoa+9zSDV3XAfWi3EMYtwNm5hPyLDrqVtr1WMgPUGXp5Yed1BHx6Dsen34xcgyUDz0yqbgrHMc7F/kUn9JwB3pLrg+7Jy0NS4AaL3TMgXcH7A05Frzlkea6hqYJjZmnPIoRZyI/OBMrk8cs26IoOwTV66EvGLd5Et6sfR3KhexOypDAvGxZGASV0oUIVifKDMP1BgwKZQwRF0JFjVJJl5QIO9Yk4FEqdaPRehefcJVl1XG+p1aLGn8gywSyaijuowCTtSf7K0rpGMVWDkuVj2R8AQHA5m2GG+svUHpqqsza5RGjuDr6FRmtkyzB1XIDJWqmiQAa68QsUxZPyr3ccATpHBSlsmbjAotSn0y7SPFnFfLD/UmhuHaVP07lorzGHJ6cerm4RAkdlJeqZuPiKnFaZoVfHBcnj2y7o3nYRfl06N6ES2Hg6Z53UA5SbbaGL3GMAw3b1887NH9N4IkYlQuBJ3FXDjKRkBOBpdWd0G+22dxhcaFfz3DjDIX8VatfWses6RxpNzbmh06ETBOzjrd6SK+EwnuyvorK7kWSI4lyNhWZ5OkUs/Oya8gUsqnIDD+Tz1HAplbhbg2pUkYVufE2QPkaKsdEKuJy9FCsXD3llEqCcRFlISkLgrCKWjGfrtQ17TtLqyK8/JwGaygd8Sj1pEGAc1LVo7JapSsV0i0IZVmrUHAH4u9KOhpNWBzsO08GPdt952lu+AvDKY3iiEUdrod4b33GSKZMxGM25rsUKGQzG/Md23HKZj7mu5QqZdQe812qHBNZjPkuZcopTcd8p2rFfJZj/lqKzWzcH4tdKh3xGI75TrtSIZ2KUN5VkFHCqcAhjfJkxK3pRDwK0uJ4BV0DkkVRB5RbB0SUq2nQFWzjVEcLryaEnSRBVbSLYsLmWNaUTG/G7byKyyKMCmSB3JqYUyS9FiEQw31luJTTo9Bfj+wOzL5L7wpjhZB8qheJdlVQFTQKUnoXo8/2J7WntuGZ8uK4M9OUE/y0leBF/jSU7dQam0f2HKwJCKTXR9evGXG0W6oVr3/+cLX96y/CgPWjR395+VIpxlibA9u4W1OT0LBbrWKPCPLGfO7P3y1t5B9RET6gAs9u5GfkIftNfAYDsV/SaPYYYrtXMoBf7CnZ02TKUBVZ7B/yyDZoz5yoMY2bXZwBl2UfN8pN06mNGdSsDDBgz+kRj9RGx12EXvyF8eBOdfAuP2NehR+mJ9KVzqOP7RVktufOW0NxXyNitU315Hymhx1UswRU9vNZ4nWC85m+CZ3kMnnc3vj7GJVHvzyeqjB7WDznJCvrSSjCKbR/KpHwKOvUsILUwHVHwNDGc5NJl/zoIOC5rPq5tzJsdRZZuYlvpmvlVSaZZfTdxeM0NK5Rh1djAdfbGrR1I9FSuOzmOAts1eAZae5btRSrHfOYnMAf/V4dIzIA56RGLgRp5ZF5Fld9NBhtMcaa2JuMAGS9RV1mRYmtYxV2uraXD49L9bgWb0K2cBKoOhYYhfZOaxaFDYgWRDWXQVxr6vMoSoJwyqWsa8YF10DcLvWTk+0kelFVx7IkJzqkpwTKT8GyrindgsD6Brr/UKDctbgR1ZIwCP/BCn2E3EGwvOdarTzlrJpy71FJBqa15XasC3JxkHfOQOyDES4KFfEpSVzHjmOuJWm1KwY/z2LnNXLMtSAtCVfpWno0S4LyEsY1+bKmAZOCLAj370qqZty9T0TRmYr1xruSqo5JQVZVoMB5MxwQLU2KUBhnwZ1rST2aJUF3q7S8Hs2ioIciqpwXWo9mQVBRItr3+0cc54TftTAB3dLVBLJ2DPHudFhLopBQQWQQR/Y+EpTUdUwKspKotL2LrySq4VGQRJJeXq02jxAzKssE8A6nIVHuA27YjbRxjJvK4HoFKiJUWlU53+CY8e4sXeStoqmlUi7M9UpRSxZE9CudGiaPcSVtBKtUNSGhukgeNoLWCjasrKdWwKwuu4yzCs4Zk45sAbOGbB51akW5HaO6TLLKXVEiZ1OXB+BGXkef3G28TKB91EcdfdLYjjJ5ZL67ojzOptFIVm0fKk2Du2HlvSzEwdvl0VpMqTk8ul7RTem0h8f1JM65dJWKzKzdWGpJzGQeK1XH7/W0Cpj1Rpj1pHI2zRFmPX1yx7cygWutUyWUGkKrNeskZ9MbqdeTJw3OJh2pURpmiU8lrChzxKo3sVhRZs2mNbFYT12p2VDG64oVlU6Z9Vc0K8qVR+5VPn0Un0K8fNJNdsJmYg9kfVdFagAutv2MFMNKoCJy1hYnmjjXsqgyvVxNFOdSEuX0/YdI2cybkPE5FVTiZ9draevYloWxEy2rCWvZloWdojhk3gJXEzdgXBQYkL/ieL322edbFhesVqacalnSEZH/ther6erxKYrLs9j2eqemvIZRQSCGusasIRHrxa1xuxkwkace3CVwuEKYyFIN3lxf9H263diejlaXNmBUEMgcv+Tu1gNTgX1GFYG9E8jraRySLsusCj8sduu12x7fojh2HmEtZS2ZgqzVJuOh4mQ8PK42pnKqRUk4CJ3tcI01NVwqotbrMVoyBVl/z9Hdat1Ej05BmrN91KksySaq+MzrarI0op05Pcc5ESY/yzmSdVhvyn1QnHIf70JbbzzKmhquZVFkfrTqcDggXJTHU6081Z6yLgt19mJwIk7yTnAi6GY9RTdqknCSFZ/93Wm/p8HY4jhbbRkgoV6UnOLKL7PgDrt75TKWOqJclki9g909rCavo1uUlkWrtQpOtSgpx6uNC5xqWZKzc/QTRZKj9BNBQXm5XU9Uw6YkbLVerSVbltXcJl1LWY9PWdyqq/IJqbpMANe++jKVI6PTHcLLq4v1KmGPb1kcC5OLmdvIcrXxasq6LLRE65Zzj29RXBGRjju8fLba1viAcFneeqt56WGA8R2KI1rtFWTDpSJqe/NsRVmcTUXYzXqja8e2LKxcrUFyKhVJfoCC42oD14BQTR5771Geomq9PVIRr5rYLLuL1jVmy6gksIrowmdNgR3josDOk8lK+gaEy/KiZE1tLduiMBhfr8rKpH5fBdIeby6+X0tXw6Ukyg+K1XrjPp+quNXaaJ9PUVy52n50n0/Zo9nkTByZni6fhwOJLr+YMSLF04gfz48P0rM6VZTWMd7LNUbCTqeEXFc6WcUkURXdn0X6kFxVen1+YEW5HaG6xDW27QcS1Y/HDK5cuPWSIlA64dUWnFb4sSrP0+jmRZhm5SyNcF6EalZI0sL5wrynuuVTFbjWJmVPo9Y+ZXvEnxfIijoHnMpCo99XraYtn7LAqjhZB3jVUtgSqkqEiEiho1AaoEIm8B7Fp1UVdoTK00ljr6qTeWgZkWxkqR+j3fiCxvRJ8gy7WrnkK5W/ea3vwqgEhk/qt7MA15X7+fF6kr2hJm9AuuQvpn0WoFLoCxRUDCivuuOPgzf3KBJ67f5LVtyRrLJc/EozMcn2/Y3/QB4qcxRgb8febPs4yavP/pXXoHoiSpQL/SXYMXJQKaGgTO0JjxJCureT4E0SQpP2gIXEAXmgwv4u9um35WaHKmgJQgolMSV4GYgYhFJIM6MBzch8oLiPAjIpwOwvegelSJgbf/gaqcbZyh0EFWh0v8J7dIppGZIeBMeDb1jsiZf9IFbk510RXl9cXKIXFxv6/z9dXH5Dv7q6fNZ9tSWJ6XA1TpsEpw0iczq8L662m+SwvSZ/JNvri3y33d6nNDpNlWVxcCSNe5yWrBI2dTe3KcsNfWwThZjBtWk2h/S0CcLqxeXF5mpzudlebC8vntNQOt+QfnMOMbzbsPBGm/KU4+LFNUl+sfEvr6+fkZxdfX/VG3t+CHEZFFFOrfiHH7z+p6YzHFiaffsDDZ7zdxxU7NOTb5/cvnn7/tc3L998/A//9uNvr96889++e/Xbr69vn7x48p//pA08ye4xaYUv9igu8bf1NSqy4H/9yAZ+Msi++M+/dV/fZqciqL8l3dGpyg449VjtCHe0Fnw7/ZZUZQqQZOEpJkPxi09PfuAiX7x9y7785jGJ0/IF//bHT58+PTlWVf7C8x4eHhrbETN6Zem9rx/aYDawf6LVp1bGkpHpXf1lFLLPp2BT825KXJ3yDcppQLIdqTFsDT6s6JtDELDEeZgM0P7wiViTmZxNh+jObUkqXkXd1bIHN/+N/unx59pCaPL3B2YXrpNYgOL+61s7638xJn3Jdgc4xvusrP5Eb8X9X9MCmPb/JKM2l4PodMNHJRlL+vFCvx38HGcH6W9Eak5jtuJS+Miuov+o+55B97ipfxE8e8Qoro5+dcRFkiWYGGlDSljwIN0Fjcn46GcV8sP9afpYXPuw3tOHgv1IWpigsLgXqsZJHO3YtJp7+xQ9lN4nVzSMKR01hQ8MHMpMf6ZRnpqIaeLIt5JnVR6YxqkePjsI3iV7qPLHJpY9WlupfJDmtJ2jRGQMCsJA5TmczPB1jx33j0q08b4IFB+UA+5xffJL9vu08kqfpCx8tSZ7JtoGZZ6QiV5aZvKHSHdEpqtJHT/HvyddnezR6SF14c/cGLKn6oWm7FdZYB9Zgjx7IAZYMESBiMmZ3XOk8MwAkpXpcpoqWn6oxP844TSQ6yxjjHN6gLH/xBczfp2Cr3+e1c1nP3x87dO5fZbitD733pvs0uikpOMnC65NHA5+IaVExi2y2KqDrNH9vVHafl86mkMPfpqmYr1qMyQ08RqHzwSNYp8IQGRkncL0+6KAOjMvpzD4nkIcURrGtavRuZ8nDLxfEStsf6SXZAM8tmy/x6kJBPImT8gxWDZVyNiDdVfSPS5nFj4+QR92FTJ7RqOe0+c/TfAmD1YFSkt2XliehM4TujfSC/hsUjF56AvqYj6SXiVGFf7KO5l61+/bdo/vW8kemOD7sn683bj12bYCnS33IujWL3G9hY0clb0eDbbp7EQ8Z+FZh8XU0DmedkpmozoyVSE1VPJpWXFkQQu7TzqypBj6Okock2bRg6m/MFAjQ5Jr4unZG4puQdn7p37aepzWT06G1ObvmazPpdLj4jr1ErIpYvcvDaHjlLqcLNoi6aHxbHrFIMmaKZtwxsvJZmNMaybvzXKkyXTi75rjDEMTK+AAB1A1ZLQIjKvAKIsEqp50Eg1VkLQ5V+K9fHv75tZ7Sd+YvuHv0oOkjOrjSFEsbRHLAGSCY5y2d/5YNz3dpAqSqyuDtEl+8lGR3D83SFv93hx/Wkr8ik1ZBq+73v7ydnvdQuGET2uskQZvlWDQfBQkORQUlnUgukg70rckcFjVYs1VxAoS2QxKF4luEkJBkce4T0AItIRMFPnLv2yxt1AFzWPZgKoLhcGKALPeHQhsT3ppqCI45EEBVTnYpAIOys8zMJMd93Amo7vNQFDRFsr2EQJr41F7Aw8AjAbaCtDiaKyIFpMeAxDqcYegep0Gjm5ZRinY4BTjuaWFNhpgK4jhWkGConiXyWaq2mg5Ou7ghvSkhGpXyT3U5CcPUqiOMS+gqipBIuuGQ4piKEQyMUBVcMzrMCwQgBi2qpVg84OS9JJ72a6HARjcNBSy/zlBdkCQM6r7EEHZ6yGU7l6pQ5ESrMhSjiEag9Wb8F5ZETudcg62sKRfBOsLW8DaZVkVZzTOsofyyOu/KexOuizlbgRCz6EwL4RBFi5OUQRp2zMsmuKHaS146R2EcrlBzUL0AuBZY+jrKHCJK19lFThI3D/eNPq4lJH2tQPbm5rdxZalqbIkWmzhwzTd1UD1NJg79FdPcaBPKG5ZDVOWcVRqmoF0BdVpscmN0xTc0YBCGr59yItIrVibLUeWHb0ktTS1NO0J59byQUDqIOa3gBQzOEGpT/DYpSZN6qBe/B1Is5lcS1gwA9/nZafLGvr2qNkS9SAxp+0SqzHXZyEa6vqTIi9Pyol50gVWnITFfb8uY5Uho05VH2dkqep/aiWjMnkyJY308CPjov9QYxokaU7JmCQ94BQXyz2jKOkRLW6zSZLVLzdMEtMTPBrp4mhH/8eSvnx7dcXeKyDl5LQgRydTaW3y6wNRGoXbAnWZN0jMMr+YjuaZVfdEcaQcJFHawB6lWBxQBs8Hx2hxGTxMsLzIGj/fc5WgnkxpuB8lKRQ6lFEC9SbXS6iwET14XmUndpBAYSNy8LzKRtwggcI2yvh5k1JU2M4YPF+gZH9K9aSVeoWutrQfJ6nw4uAoSGJUuZRW+IMUSkvvQQrFGW6Xhp7P02n8tJds+y+lTpKnoAxaz9NGr5MAaxLMHM0QJ6BtV+d51nZ1EtC2q/M8bYQ6z5d6BuWtQyfJ3MkgcYq6ii+kIOtX5gYQxazOdh8Vt+B66SntNP0Cf4Ho/VZ2pp5K7w5s79h3BY4xKnH7mZ91HbzZV5kSadLUh1h9dkP18UBf5pGVFn9Ik4pOFjwG5DVwj/Wv9Be/zHEQ7Ze7uzFqvSign81TNhe92G6UT9cWiyPPDNgek5V5YQWR7BdHjJnUrW8OjfR5fDqQZWhzj6d/p0ez5s4hGWnK0VNS2/moU7aV53p6AeZU3OPSv7wId7rmM6TaglHV93eaj3WDMzO8CjCUYmqFuro5ALbCnLv1tHQryszuVoy2eayiybUt61yIMC11thfFJPfHdDUXWZUFWeztYlx/S/6hq7HBiDDGzy+2lzfX9Y/dZ1PEh4QsqOvv2T9NcX5/QPc8f+yfSzglJu0nqj4P7lWRb1snOM12cPsNPKJPb6rQPWqFlYIB+jiCJzR8G4ETGtiVYsWjKgbIvQhmwMhHhZ1DA1j2YiwlE296XskBPoEl5mahGtxUbkrArtwpvKwxgGcHO+gM1QG20tTTAFdl9qgIG/VxVefqJthNPbTGbl6Rdd31wjCpjzjoruHReX8KD9x0TvDIR4WdfQPYUefhhqDtPODhu84DHltlsakIO2iIWQnWCCe4/g4VOMGVMUPnXqI85fSUtNe6TehuTdOAQDEubAYcJZ4sSaOcHgpZPpNoQkMvaTvJCu19EVkwouU3p1qYQZDAY9KondCgPCgvOO7BgQHaFpRAVjOGfESX8HJZPCIXsDeXW3jY9mto2M5tkwvkzlsvIHLkQnRzUodb2Wy8ksL2BMMiRxDQzZYEx+mgh98b21oR32c7JWj5tKE2UQPc76HW4DA2GCnT5mAVfWtVoi6wNxRgu56uilNZ4VD1vKkOB7WLa56mDUzCRTgAt1xXCuFb3/o+wsvXKMyQrTa+FrBB9k0UOOCb1ZAjWb5foAmc5egfJ+zT0yvUNNC1hsPb7M3IoJkfp5wsgdLKmfw+h4s88BdPpG7mOA1xGihcZVCh6I3oUVX67ESo8VgyhhV1ZW7AVd6I6UJXhfHmhBBz1DU6QW5ckbFdZScMVrtkC9gg+04KHBDzpjkO2vk6Abbd2JLB887XXfUcEjipQ0MK+CLg+E7raH8UcVcYAhYnJSLgsdiw1mCBL/w+idMaIBznFymYf0Gv53u0u3AzcUe6OGlQAlNx8aIIpXDWXBFJxVGGIpTSxWFlLDBZ6f3y4UMRVHuFauTJu1w8v6WIRv19g4HV7rVVrvwqAtalCYVFxIFllRWoIlTf63hTOfrfqVYMAU5kD8QzN8AxyZgAh11jUje5AG6YP4233jVi45i4vUzIP9um98sqrKMVqJ24WUA7KdySWAZRuWshQYkstTQXLhvzKha4LL1f4AoVB1xROy9fcliEG5aWLdpJ4cD/MojKtYEGJclP7fuXXHnQpama9wn54tWSJtXg/Gj7EqX/pSr/MlJ9NdgGL4KQ1uylDJCMzCVC4pmEw9PrVEWAI6vRULr31Hu4ovW6gAudi4HmG2OMyA6kdQ7QYijaZw6DmVrpppgymtp9HWU4u6xGIzhlu7OLVW3h1zcKVY6azwLkRRbgkp5HUdvCH0A15ulpUbWKCGCkRRHqFOIYfW6yVX9SzQdPy2XwtHq8g7TMyeyzhF3buhXDdAfcG5fk1HVLSX20bx7JP1VT7Q4snp8Xx63r6SqoipjdfydS5A16itX4Ycnz2iHM7OFMafLdgcjXT1X55sn4JWQe8tAEJI4X5pNziVkJWKefa8NzqWffnMwlXLjuK0saMaMHAem7fOoOxjDjNYwkCpgeCr8yGeK9th2a9MLwYXoo4ecUJVHAwleES8uTWSSOQPJjlDzeBii34c/RQwFUNPS2bBYSqxA4KBwAWeXnNNBOT6/uvP75w9X2r79sr71fXr6k33TRkSSXZqc4jf+lQTc7M6uUIgy7Ds3UsmZsBDMpFBOUaTM0QRE3QxOkQTsyAZC0IyMoQTuyxQGQ1W9H4vTmQebhwMQtnIFVx6gIqbu/6rPHj9d5UeMqkn+We7FXhygimScWdYwyvYTAeCgi6XJTGWiHSvxMdn9SHSU6yH3xqaPQ0LRzvg6VkQKU4Di2L6ogsM5UcETkv+0FDE6exbJpsQYSXprlqmPNnUZTR5Ef2FLHYCuHp9uNzN2wBhKbhealffXJWPy+iu0wWINVhR8WO+sim9su1ACx7krDo3XbwkEou56qg2Ff0Pxyhz2MzFmbOsTsXWB1mJkjysogB/ve83gXytZO6hj0Og9EyxEGITZHkx0Q1kC4sYaop1q7035Pj9tAzLJSzMJn3uHKuotI6XLm7sEWJousTZ1LHcSpQ8h8aWogBOWlzNuKFop1vWl2T6FwQEbIFmxmu1MdjMy0Lq8u7C1VvxZiK/TSukXQc1MQuSsiUqPDy2fW09LCfvCkdwIBMLY3zwBQbuwbWFlaF09Jz8vNxAXSA2Jz9PJEVovW9Y/hZdldBKKsiugwYYtUHQuMQrknDnWgKAFAmd+NV4Z5vLn4HgLDDwrr6shxrEuqximNJ5b0Htrs/UUNhF7g8iTPSpvGIQAlvX4SVdE9COisZ149IJuJaw9I5YKeER6Ly1nClskYHLRsCGJhPAL2cGwnVD2o9sYEBFb0O4iZyqo4SeNw6wDNvSTVwZm9zS4FYk5Xi898v3PpJOUyTOonJ+PUfB/Ppmm3UHM3IBRT+w8FyiEgTPNg1Bl1qftbdaa56INY144x2j0qI6lrwUU0HOTd/W25TwtFHEst9SaVT9ZYxtZJQqvakuSl4fDVRzDaJusD0JmrfkfdRyDDjzRG1iJAjsKZIB/Lye+syiC/M3qF1SZvhkzD1jrcLjAFWXLZoYEwd91NG8bUqB2M3aAwBQJQFEfya6taQPJYIjowfGZJ20COpW74bRDtNdJ3Cva6DN5MCFBmLkBqw9irsR3F+lD6e90CFPnNTV0Uey0FSsOMzHCT3HiE7qOVshgYuij2WqTxLzRBAJTEWbV8Hd8GEUDjbPRLEyRDTQX1TBhX/hHHNj0j28CshxELhDoaH4CUJJJGalJKTz5fXln3ZB3SjEPmRZRuH7auLFFCituj39HlS3K42OTpQfjLpfSXrfSXK+kv1+0vCYqaawf1z5skZJ9IfumxQp+f/e8updL5YHuz/W8UgoVX+fTkxacnP+RF9nccVC/evmVffvOYxGn5gn/746dPn54cqyp/4XkPDw+b+kDbhqwxiHm99/VDG0xnHvTJb/hOIUtWFaf6yyhkn0/BpubdlLg65Zv26vwt+7hjL1h9nOTVZ/9qcwgCljgPkwHaHz59Kj59Sr/55ge2/8FCN3yTUzfCRU27+W/0T48/94M3yt8fmKm4TmIBivuvb/9JbZlk95hY8sUexSXuHnr9yPZZSvLLf/6t+7qOZtx++0WYlAcZJAYlKQ7l12zTT0+aGEGboOhOcRZfUg0+BU36cxr6b0++fXL75u37X9+8fPPxP/zbj7+9evPOf//q7e2TF09++COxxqdP3/D3Nz9+enK5ufj0hHyD0yCj/Rr56rePPz99/unJHwkt5SXEnJc8lqIE/zjNOsrpye5d9bIuF0H+KQePz/z5NiB/E5QG9knLRB4i//2wz+IQFx0dL/vJg83jESn79mHW6YW7Tc3ZFmBtdfoVi2iHKhy2X3o6uEdz3B+8Omfjr/ne7XtUHcnHUxERhLI6hVH2oilzr7VBB9pWiPabb1wV8Eu2jcTr9/usrP5Ez7FaF3ROkNiJ2NsK538g+Rl8PkM+rXPoudd4Chw1s7pXlbay0dO7ij4veVrYgo6YTG6PfnXERZIlmHRzG2ohcdshX7KouPQbNlzImqmQir6ejGlU+qxCfrg/OSNivUJtuBN3J94Yxo5N0lcIRZRt3O/uFYkl+5TgcXtTRxr2y+OpCrOHtPZN4IpzFCfZCcdgu8yV5SY+edahYi5xHHK1d2wccgx8ujjMSobIio++PC+y2BUPynM/zg4OsyEIZbZW+U+vpIJXhcng4bQd0b2P8sFl+4m2QZnTULVpmTnLC610PKyou5z0fEO4Ixk6InFYrSt/PHlYrcN+dFbfwgSFxf0qfQ+pCS5rM5/dRrhcpW8TXuEG7woGzp78+yBLVqpz1KvfKpViEmx0pQweHTaqchyO1w3NrorrUy172icFeycZaYIju8oEC4XO3knzwdXhSqXes1+BgVc0eyKbjaFm1T7BVE/sNUvWs+wtnYKPOKEHVfB5Nw77/T747uEA3GILUQrOljDNcrnxsQHNQt2ARAHb5mCnVMFz8uHja/9l8yaodGGo9j2TT/KByILMBYnAK7OD0sD3NBsszGJ99MgtgYMc8DWQq+rawtMzpgF2Up/auVttpnU4XNiq4WCVdh2TMap6ztsROs/bmBA+h9FoDuLzcWgNKubInh35dEc68TPqqoPg4eLcG5HSdJelnNKxuWBBv9vE4f8f3yUun/SwmvOxozJqM77JuZ1P06l6a0Sa9IX38oX3l6y4825rx06/Ur9Ot/QEYRRERCwztHd/4z+Qh8qcLNi8Yf48yYkhpaozOU10Br2XRnq3Z9O7NdJ7dTa9V0Z6r8+m91qsV9Y9jVvr6ASe6svn5l7DwuvnUapXbFo+m0aSsmcuheQSkLe/vN1eKyeXKWGHojRRxONeReZBp7yLwzEZL0ixdD6Ea+MNKg7LkFcr8iZwc2/RVSXWTpahFI7Q9ATOvpBXLr439fAMUX4sHxf5bru9TxGfpphY501zg32MB1CAxNz1WhhA3wALQBvLr4+CJIcyXgsGp65dnwCIq7HAtO1ORR0gBURdiwaprwog9dVoYPqCOiwWiDqOBaatif4FIq4Bg1NHeLkHTRiBHR6cxgQR3DIoorzKCjipE1g4xXl9UxlGJwcDU4cBWwsGbi24DakEI6+FA1O4L3m0OxCBLRqYvkMeFHAdTosGqC+CM18DBqrOzzPAKjhABNN53EPWwhYNUN8jpLxHWHXRFq6FcCw4bQhwvtCAwalr/czB6GvhwBTSO4kBSsEk9vDANMZk7gEmsAEDVfe4Q3AzrT4guEr6pj5KARd3ImA41biNtgYjtsOD0wg6tsTgY0sMObbE0GNLgqJ4lz2CCezhwWnM0XEHueXQB4RTWcINhBwLTts93FYXxwLTlgcp3PS1AYNTV8B11RwLUptfRocUxaAa+5hgWsugQFVwzGvnTSBSh5BwSjF0nzhAhNMJuC9SAu+LlGQS2h5XBpDXwkEqhNwk7uDAFMLOvODnXSfYidcJfuYFuzkHvzd3HyK4GtiAgal7CDO4FtyAQb8attc3hnP6blj5cYUHVR6ZXvSn3hxMzkFEaaBx/mFyfLzKkkihrtf62hC/bSrVQhGcZOah23R4mzTmrAd6rqXnK1+HfZzWXEV9/1Pb6m0qc+bO+awOc5fKnLmsCh7mQIe5S2XBTOOTahM3iWxyjKqTwgJgnOMm1TKzeq817jXKwqrXqGvi4vEfnrMmYm2byroWaTJ3qWxrkS5xk8hlWVZZFgdHFKkMHwDVQWag2t+JsoVa1Y2tuvTKhaQ5xtsMnfO59gt80BlRuszzVj+B0ZztyErDUhCEkkMQ+HmB+Sl4c0VTHPB64mhyt8uyqo7VbTLBG16xN+21hyjLrbTT7A2TelMkl50byiPTLA9uaWvmOPImqQ2HjuFd8Z5jW3M1fRRDVf1ro73CXGycI1lyGAtrsfAGQabSVwisNEgNUWZGKgapQWpOjopSZdtptuJ0IKC12U5UD8VCVYFLXPlqhxAFcobJQXo0k6Hi5dvbN7cmo8RL6h/VeP5ndgZ+VApBUkZ1EK0oVqmpLK8eFd7u+UwhrGYfNZzycl8qyGDRL9RT/d7EAzMSM0wOYBkypbKwCk9tp4O6HwmSqyszHf3UVjqS/OSjIrl/bqRjkPprmZXWQT9M+hrmLua8i83WHdzyTKrOZx2AvllrDpJ/TcvNTvhiPR3km6+hBsnPUVFlpmFuIc5bpWoNyvWpfrypUF3ir6k2cdWqVYlnmdelLvHX0uPxuAtmXV7rPsa8lsJ0ABM/NovFx/Pt9dJ2HYIIznbLZ+xfF0yi2b2lRYd7YPqMrrEsu8sD02d2An5eoOJpA0WFhocNliQC2tDspOe8wPRe5SWsosAGbK2RCGY+N/LIXW6XR2KRPdoJnhAPuN+AVNnBQfceqpf1FYUOIeF7EiidLRp0TwJZ6j088P4ESmMD9gWtF/pe6M+7augrUbd4P1Vj8jGSbX0YeOo/olir2i4J7AFa6oyGuP3w1cZSZzC/puXZoEaY2YNPD8ZIoGVmJW0K9QV1M42XwjNvTHAV6q23SdHuTvQQbLuV1nNjgStUHHDllxVRYi9OAAimlSDWzq7rIHXWUid4YEpPSOVg1aLABgZOVwkkrNRU9iV0xG37Ue7p2vw3m2U9BEe12lrbFA+2VtsLPBkd9BcMXzDCBDjA7Q3AZLqXI1YYVpP8dOajivlJvSsjD7dHFOt0X1PXRSUr1yKa1eb8X661k7lCrRl4OD5v/RlIUa9Jg2RNnZpg2XYhQ0/Q7I0fpMQOEVao7gpVQSngGnUInBfRPQ2OodywRGJnQL+mDmZYfw0twjudCZaLtgAosUOErWB2GgVgX1A3Xl/rO2//za8W9oJcKJi6TtTe7BhC2FZUDpcXWYDL0kcsdqOltinY19Sv9A2s3By4HZqrVEMIN2Vkp20K9iU11TaK5Jmba6tDo0W0abq7WH0U68rQRdhk04zazQCIvBEgsNLaay6c0BYPWCdgeQ/xrIfqIbBGBzCWKIL6qrrorkWZGKG9adtHASwdC1FjmC+oUz6FOEafz9sh1xrUG2f9fNMwu9S2XUaNxI5eP0vYefRbG0kjoK+pKXKbKtd4nn3eBLvUX8tRTpyExb3RQU4WdvmMzacWsNx2WA69+mlWTbuEX03F5JIXa+Ugr7ROdgm/oJ5X2UeLK3NitUuRtTV7XiWw9nVI98ZM75OrM7ZCSt/GZq1N5ddh4FRbJkVg7XIeymqIY9B08rqPUXk0UzZIbq+GnhE3E9Kk/Gp6r37BqrY6lmXa5saJrS1vpACE2WehD1UOKIts0EsM0hbMVGiurlRao6mOLjlQazQS0qRcqzXG0c6uNRIAJvzl26srNkNHGtkmiT0RwNcz3VWzH6SfJ5yo7hUxdayj76cxvMtPIGjoJD1SnsKCMisUnHIMOXkSc1KsnU9sm08W6ESPs0liTkpDW+hx8hTmlCyYgR5nk8SclDoH1+PkKcwpqedqPUqewpyy1G0opWUzqV+V6JK2icyJFbegB7za28xTWsWjlgNajWOVFsehzV2NtgODwmSFZostWxP9EH+Cnv0YKbjYH7A2SexGME1OvZujQkrmOAUprVWGzL2Exg4SI18/38NU5nlX9ac6yLe1O1VWPxWuX49qtI17LDbtUPPgOixjWweuBKNAyf6U6rbgXipzamUPPgNqe1e9zSxP19iFjTMrjqCz6h6Rm6y5xbNTPW7N2++S2akep27kPvHsVI9TM1SbZHaqx6kbnUs8O9Xj1Ax2I6Q0G5OGCe2mx3rMmqFghNNjPcbSsrNQDekxJNUO3CGdl2sT80S2xIYd5DSx7QJBj1//TIFkgaBHq3EPxNEeVoGIRJM9rAJFsa+zfzi9OhCfDhrusSUoe2rGKoo1cYSlWMZ+A7e80mOW8xozeHVuvCa9N8LS21VeVLdYzTTU6e956+06y4ofPQ2ylE8H1T0oz2LifXG1fTxsr43gZFZnVqSm8nPkB6fiHpf+5UW4U+hlxcUwzLrXqvaWyExqkU6utmvmamuTK6M6KDQFFdTJ9pls09Y/MoEMGqAzEELDFJwMGkg1LXy/+pxjeNUiaEDVbgQba4Xphnstc3CJRsupnnJPM6EwbWlzmJ4CJ8x4PMtiWE2scnb+SlSpRwZQtm0VAVSTKvJEqOAVgcDal7xI7NnLtsT/OOE00Lh4omq0Ftm+nFsoT87g1Iy2ZzI0DzQKjUvzrV0L+dnEJq3VORgGmuz155I9EU16eyH1S4U6CIVPj10q7D/N6BLD2ctkMxcrZS2CvZg9RtWpsNTTB1nrTFNeZFUWZLobAtP4QLFu5AW5MQmW/qDA8+GRxF4f5RyDQIQxfn6xvbwxW1mLbNJBmpumw/AEmOcw1EOyO5luZkxtxNDMzcOSe0Okcxjl9wd0D9eYGJq5UVhyb4j0ZU8IjlFu25mxJSbsHtsj3B4bKwyaTb/McRDtVV4fjEcdkrrecmo3nh49Me5q200r1xN0qrIDtt5QJ9ZkditwjFEJ0mwbyNqHWe2m+CLfbbf3KVI7NTwqbZ5Vb6TVUyECWPA1NEkWnmLstzudLBoi1wKepyWyL6MPcxYkIiCWrFRu2AocJrC31lmKU4swEdT71g6HVVz65SnPs0J3d0yw0KOVFGYtHbXiUBCQOlEgVTcYtV29vpG8aV69Wqw3xwSyk9LBZ0ka5TQAXKrkasQ8HyMioGzkJVqhLEQs55jh6V/9kxiuyazKNXZFczVuAjtgmD0/avug+JxXSm529cQOsQGrpCPBY/CzrFG1rxYu1UG4Jtv4b+yAAcoUYdIJq9yC1JLZQwXQGASJA409VAiNCQpciOzBQrRgzF/1JLAjIquaY2wIvUd06cCqfVgYldubZ2509oBhlN5cbt0o7QEDKD04afMH0DaPg7/n6A470DlCBp9rgA9KQ2z4uQa04DE4nIXvUXxSeeNhYuEO+8tYqDd2mC5zqVrlMLTzYFCrgrrIqyJVcposKZwuX4NJa4MKWPFrFmVPpnp6R+Dwsvm1JFfCO3gg6WTywg9V+SHOcRriNIiwzQpSkIEZErhscAvtTlFcRal/hz/D50LCAZ4JAtyfUzrKxpTFSUZIr0bdgCt6/zXNyJAFPCMIo9CV/AYbXDRZQ7nSzKHBJZfRIWXHHlwJHxCAyw+i/Kjm49VEe4cOJ7wqUFrmqCD8jjMxy+Q0Q0clV2P22Tka+STTzIyTnmiGx2lmXPRQcho3WXE8xs1TwWUpy9E/Tk6HDiEDeAYcF4eUxVVJOOqNZSSusuGk2xJTwO1pRFXpM6eDgMInwF/X657xgdESwR1laqLakj7vVFY49MsqK8jyxGJTqWd+up9EPnpzLIB3BCN/newsMYFliR3ZhtXeQp73FqN4kwUsp1J4+O0n9YPnhuJNDqUvyJftDoFmYYbEzV4BtPoRtquVqyPZHbrrLSZHGZiyuN70c5gR+NfVk70hR+o5NPgklTr0ogUL3+uICMDlK15+MpNueC9qTnZ/TevO9FIWNxlxUwhChi/7LWhzHubLeQXqd5qMl3ItQhuNa4AJs+jsMBUd6eiLBfaq0wO23KmY0wy8P9GHJtxFliuFftKW3cMG1221qT0nGnQXuw8MtDM3p93RttyY4ojSMI4sDlQs5aFPAJ4D+3dsc/LhX7D10VFV4bJyV4FG+HAzhYYgK9UCLCopFyK70ezvyBwkwZVL9UOOr2tfdGbGYW+vJq7kABO8bYV4H6UWU9gZvX1scN12E+851bBLn8kkzIVkM6+EKr2A9d7iWLYUHdza7f44O7HlwuwTBnj7NxRu7N9Hh18ZHHFwxy8WOzH/mAA+Bw61O1Rtt6k7qxp2R1e0anIhu4ftZkXmQvTRKLqagmKgvfM57Y42zqULJld56BM4XJG5kD9Ad7oic6F+hP9lb33GfuMqh9+x+WK2QKOxMp+50EB2Z/2HkN2NhRkqoIlRAwl0Tl6SEQkL1Iv7IavNuwO1ggCcmIosA69fwvJldAKO3LXkZLSkcyuk4oUPMjxmR0xDSijFyeySsCITIoCEZ5Dk1iJ+21TrYvXt5ZadYBIhuA9GMf/jxLFVPu//zNyF6iSlViQJkVDuHNTOfWuHIy1Q8kjjaZMFdOiSeMPUVp5ASbdmp2UCsJYXUMoaZ7relQTlQECkfYgo4+R5r5fOyvwNjo7h+/xAxW8iYZh0zVJnoXzsy30+zKgo2yyFN0hrXfrzsYxUVADUgTJK8hgbaxEggNcHR/OYXXzCVZZVR5OxRNOR9yT9gSwbySqyuI8C7IeY/RWldBRnK0m7Kk4KZQF/tqRbwzRlvgDmqfGt1U8cMYqro1+RmU+SJbiy7TBI7qaQs53HxIDT9J4U1bZBC1C1CltZ64pFGqU+meSSKpVVyA/3J+sC3VX+GFOvRMepPTmobYGKYLVKVFXrigVa4rTMCr84Wk6m2VZcA6VXgl06b4JiPah2aFolJdW0ftGUOMYBWOnUaEYFVCf1RFhAxcQBTUpKJu5LnAbprcuVIi3AzqkstobqFUmcoZAfMfDLmThvXfCFplT5QSshhnJBTjchSS+LwnuyOo7K7kWqtiw5jp00gpNidurcTpoQx05a+Jl8jgI2rQx3dvKkWHYS422AcjtlYwg7QTl6KMCqmxzMUiQuoiwkpUGwLRWKkeDkwdhxFtBObPk5DezUjRAse7ogwDmp1FFZWXZ1QiBjcSyjFQruFny2SUeFSfov9I3BZACTvzGY5pW/2J4CWI8xNFhDiPcz59pkakQI0KOxmSghDvRobGyvKY6L0dhMnhQLcDQ2UzaGcDIam0mTg8GPxoYKxUjORmN7ldC27I+lZupGCOCjsWFXJwSyE8cbP+nTDUUNAQCmBqYmEiFYyYljKy2D5BZCDiifCXUrV9Cks7KBIXeb0Jacnf1BVbSL4qiaOee7IGUKAzWHtaimupGkhVIWbrTMqdC+siIUwH2lmEnoJXY5k98dmMXN3xHG1mFO4a6L7aqgKmgss/QuRp/nzuxPLc8N4cVxVwhTtK/mzJzE1qTBWyzcdtXmkSGoGpU87PXTuazJcbQzr8Wvf/5wtf3rL1vd4LIToF9evgSKV9haUR7Hb2pwGsavzYtHxHhjpK+mBgO+JjiiInxAxXwkyWnXmJFk678iYLTzu0BNfjz2bLsDNEhoMXIxHDJBq4os9g95JA/WNSdkDPDl7kcN9ErHjFFem0FinNbW7rNTpzkN6nMmR0eVlCN2SOJQnuoAgn7GPIw/qN/6ALjvMS2NIJPf6WiLgXsaEutvmgNHWu8YCkzmF+vgfOZ53eRI53jPLLFP8ri98fcxKo9+eTxVYfZgcULOpKYJwrpOJfmnEmkf4pYVpwBfuW4L0rbxLGWyJT8699N7jqbzZZSmamMVlWYTGVK3NP8PWA6V0XcXj+ph5J0MNLUG5fZYP9463WkTf03DC1etWml5lptbrW3ir/zw0uJNn0mK6hiRiV5O2qRRGHIeG85ir4cGgi9UuGfKn8wXygpRR4xRIneexU7w9/LrcfEe1+BNYKzO2VXHAqNwzhnZoqABhJWY5qqcuZY+AoiUeUeKynoM3SaORO1SPznJF2qLarr0djKiQ3pKlj3KLOuZAlkJq72K+A8Fys1FjUDsBM37gldo62bO3ud6HoByk+OByrxHJRkG4WR2eFYycZB3DpvmgtguChQhAUiztdsYxU5S7TLHz7PYosaNUawkJaFlF9EDsBOSl0vhIpa1DDCs5cyH6VBSYxiWQyCGzitmXmYpqekwrOVUBQosmtUAwm5ygsI4C+7MpfQA7ITcWbakHoClkIciqiwKpwdgJaQoEe3J/SOOc1zINxMXBQmA7C7UkBVkiHeng700IZS1uCCO5rzAKKnqMKzlJFEp9+mhJKZBsJZCgC+vAMZ1MRaQvFnfmBrSzDxgjruDNkp9UyXMV3AiKIBVisUGgKE3+5nFkqWWFgSo0CBKC1DOfPRBnRpkFmNwpnJbViUhFJQ4HnSH1g02SECoFGBCyS3jrFJxB6cjV4AJJpfH6AOR2WFBySNrSBBpHAdK1mzYCx1dZmEu5MLmIubq6DKKiyuXRWahILI4DljlB6r39lWeu47mfej80fDl0VQMBjqMma+QpkDAwxiENFPH0jPishnHulrSMhMfuurjK4RGASbkiAAhkeOAjggQuszcbMuF2a/3JGBgAiuYOsdxIEdSCFlGwSJnRlKUhlniU29sIPJGeJADPoi8GgdwwIdQVYI2gPHsHkThFBN6xQAiUz9COMD5m/gUzh9lV4DRPQsyY1s0c8tKakyejfYzAgtag4rIoO1O9HAUCEFlegkgiKMACTJ8TyBSZfjGQChth0r87NpeV4cDIYqdzwAQ1eJAiDpFcci8VwIIG2ABiAvIX3EM0Q77SBDCAoBy5CAQco6I/Le9ANDUQwITlmex/GKxprQGC0ScQiAsDXngUa9MF/ITaZDhoQKjFcFEElzw+Pri+dPtRn4SWF3WAAtEHHPok5usA6bi+lgw4npnXyH0DeEgJFaFHxY7iPbZQwIQxt7Y26tqYUAkAUygQ7AJdHgEGCM5CIAcHIQGO1NjPQ0KjCCIXqGFAZH09xzdAXQFPSAQWQZ7nVNJBhudYjkLIRHVJYHGPzQ8azgRZXbeUCjpADFNPoBNk493odwHk7KeBgVCEJkFAQ1vAygAaRwXbHo8xYMQafACbiLM4N2bRMwNhJobKDk4yYrP/u6039PAjXGcAUzbJaAAclNc+WUW3GGT1yBjmSMwCHnUI9zdA4C0DghAVhYBtAAOAiAnxwD9PQeBkGNwpnuixuBYt0RMUF5uIQQ1OECiAHqtFgZCUnPn0F5VDwlQGNBqeQIHKXHWIbK+RF33yHMSs/jz5dUFRKXrIUEIY2GxMXMBWgKMQVM8CJElgirbHhKAsCIi3XZ4+QxgC3oABSENYpVt9AJeKKc8IoDXeA0KjKDtzTMQSRwHRtQNxGjZ4UCIKgEaHgeBkeMHKDgCDEYDKChp7K1DeYoqiH1JESKU0Cy7i6CM2GIBiasiuoyBEddhAYjr/FRYaxtAQUiLEhhdLQ6AqCUvvsqqtDz6Lsp6vLn43l5TgwIkyA8KgJ62jwQnDKAt9pHAhJUAe799JKc+uZp8jOOwlQjiJBm/smZsDiLD6zAg3mLWx/zo+ZgqSpmr9Ky0Gxc7jRJYeNlkRZNEVXQPLHsICye7fpcPIrWDgpRnt7E+kAd56GRwdcHUn4ZA5QTRgdi0wo9VCd3A5uHdZQO4wc3Dw2WDgBcWS+6e4hYJTpz99mJPH/AOY3usnhcViMYBGqDI6HegatkiAYqritNMkFstdS0UnLz5iCI66rQDjCyLu0fxCUhdB+V0MrmaX87GbBPvr3FEOlU/RjuVixCi9CQlu9Bo7lOTv5mt77qoeE+fqQnU20r9bnf2WnA/314vE95QizeAs/OP0iLNVk99YRpV9NxeYGVfj97+o6jxzU0Dz+CQfLdHcYl7dqMpXngvX3h/yYo777Y22q/UZrf0HlwURNXnW2Zb7/7GfyAPlTkKsLdjL9d9nOTVZ//Ka6jGBhzfFsnzlQRxJgU9x9X0CCrY+DUFRmGCN0m4iqYe24KugDxaYX8X+/T7crNDFZNzwCkuyC9UJBkjsVC2JnZ5BIMmbZvGzSPTn+I+CsgcCLO/6OWUImExBnhtNCPjo917VB2hi0aRrd/rNfNQ7xXL5YD77S9vt9fem+a6nzY2qb3ccWrduZLPPiqJWSsgsDg7ACHRN+mFifmEAdRsyoErM0RZiipmgDmN+GKTvR0RVUdOhkHxhFG91JFevr19c+u9pEO8eUVXD0hiI5WDs3P/tli8b/Pavi2qbCFxEhb3Xpgg+hcIll1T6LBoSDJLkALRvrdAEY3GtyPfnw5R6u1xfcDFsBPqGinP6cKwA0VzxCiujn51xEWSJbiya4tNVTruH7N2fgxT1aNtUOaJIZgw63TTOCYjp59VyA/3J4iMRxlZ6WNkqrOHF5BfybqYvQxO8izFaR36hB+ALk95nhUV715WpCLjCi6xyaitz2hmxKW9BUjINgaFfdVJ8pPtqGwRVse+h07vkyvbak+DjdPDGch0gjKxap49kBEXqCuSVlx6DK7pp0AHl7qrghytulmhSUNYhI0wxs8vtpc31y7QH5LdqXQB/PsDuoe0R3CMcg/vi6tt/efjYfsIP+fI0VPSKfOTHKB2EeG3OQEt2pqJfaa9rD9osGwy6pStsloxSDoE7LjD6fBZyC+Y6VCJ0zIr/OJouiKXIZY4xoEJqDzylukQrrilC7BmJ4aIgyOKrJcszUBWfi4rDDCv5Ggxxjnb6HA3JvK+lXunMqyqE+Xk4Rh9lqhOUFBkr/Cedht0kdTu47Htq4v3f9pu//3PP+kkvP3V/+n9e//9h3fvX3/4+Ob1rU7iP7179/HXdz+9ev2BgtT/YhuD7JUWeeBSU8qf3v304ZX/55/evh7A/D//OGXV//jTh1fXFxeXP9WfjJA/vP53AfBPF1f6mP+T4P3lpw+vOfKr1z//9NuvH/0PP/t/+unPr3xSGhcWcLe/vX//7sPHW/+yQYQAMxWnUjJXl89clMzWCPPlu7fv3/359Z8/+i9/+vjTr+9+IRX89S35rNWm/vT61cdfbwnYn39+84v/85tfR3mPq//RW9Q1x4v+YMLx/vYn/+WH/3j/8d0s3cCxqwEdMc2Hn9786v/65k/+W1Jd35B2//Hdy3e/NnVkwKhbRxj0bx/JH+9/arLxP19POgVut94kBZnm5g3hfPXm3U+vSd1+/f/+9oYUsv/2p9v//ebPvwiA+GL25/oNiNKOMp1Uvf75w9X2r79sr71fXr6k37Q/b5AJi2BZSWnI/+i//Zdvr678QxDYgY8mhuhUZQec1ut58l1B5iyoxO1n7jQnOSSkb8h32+19ilYXkWThKcZ+Ow2nApqHFIS03hREI6fwUeUHE9UH04zMYwQP0+nSu5xXX/rhDXuR1n67OQWbdkrFWkvGvp97bBPkp0HDIjO9Cj8+Ta6u1lKwHynY5/c3T8t8Nfo4Q5WPdtFABJ1WGyqgEzxSnsW8gOapTV7gds9NfDiBJvw1KquWuBFJX7yS2t0hCN99ex2xSXboC8hkt5if9rEvPkPshfNCbupn+F+3QRHl1aB6/Bvp5v9OFmy97og+SV9Lb+KVKs7+lAbsfRlZXVT13kZPYf1+fQ0dIaoQuAaNQkpRSmYydHA4lwWyJKr8fUF6bz/PWFjMMwlJ6TneAOfnrA5EQ1FV0RkqQnO85C3K2YB6nvwHPvXMF7Lxoz+ufv/9SvyPjxIF//2/X4rW0g40PKAijdJDuUFxfKZiaCWwg+3nFpHjEKVVFAwnOpIDT04LpMB1mNPyXFLoE0n0O39B3x/8o9/VJSToDrPRFhXJhq4xKlQccDXWIHlsMut9mpBvfjSY+1rqqI6nZDdSwr9bR8B48v00Id/8yKfgT8PLZ6sJEU7DiRz6/VPy/Y9aU/IJTdc/LirqHpV15k/LKvxRp0ef4chzDUH0uK2sf69FaXXywLJEQ//TfZo9rb89myjJnIhJ6/+2bt1q+mR/PEg+/Qv7Zn1zuVdkZJ/pCP70L/y7M9rIqSodO0kH1KfvQOq0roVc69GxjXxt+nRPf3va/ba+oVYVp2O1+Z2Fp/vm97Na7ywitdrl/K7A0z194Cl74Gn7wBma63lk6ljyy9tRBLT/V5A56Raw/MmvIVvirSXJY/K9YLstYEtVbPNzsvX5lCzecFD+SH/dsH+upafZg/Prz36C8qGyv3K8T988fYvyH//tv7z77eP73z76r958+K/ev/2X9x/e/a/XLz/SMwL/dcMSK+qu3x1uIlJb+N78WDK/H5Dlw1nJ4HWlfc82MVRUBtot4GkSJKL9mMV0CuW+iCE6KK/d2Ig5NvXZMVYkZXS1rc0UVpv6AFnIQlixF3GbQ3ra9LpFGgpsbMce4Ojp+qENNfQmo3c0YpKtr8vk0svaM2n2CS5LYsenMU4P1fFH0UGLNYqNLrN1Cq7//P8tOriii1CxwQ8565BkndGb13SB+q7Z79C2l9jOZlqpTvoFP4bQVIn7m8315nIsfCYBr0MoDNnJHhT/VuLi/FlUHUeNhoe/xN8+fXoI5pY25oKPWVk5GNJUpiQup6pGoh/Jhxby6UNUHZ+yCf55Bkg+x1roZXXhgqgITjEqQpzjNMRp8Nn8bdmXk6uU1OJwMjHWe89lNhqKG7oNlm4R/eDxKXD7zTc//PExiWmS+p4KSXS5uWAgBC2jDmHJV799/Pnp809P/tgBNVPp9mzaKdjUJ+w2Ja5O+SbEe3SKq1tcVez94tDBwoadoyOpCU6Oi+rzbUD+/pF6gOdTdM+9xFPwvn5EW9y4lowdAfGVn6xbGXrJ2ARF0BxRDYqamftlbIvwk8hHxrSvGXmlmRb3k2+f3L55+/7XNy/ffPwP//bjb6/evOsdz3/y4sk/Pz15VRfdpycvPpGPn8gSCt3j8LbKgrt/p7GUSZdX0q9f0D/oA/T/SD3OI/JUePdrFtRbvPyHF80/Dji4y/wyvPOvN1ekBPnX3zb/oJdD3+XTdMOFGP/yX/UfJPWTYel9HbL/RUqipqYnUkpi+P/8J6XiZUxgaBl/29Y5dsWD5qzZVChjH9/jtPKPKA3j2rMceTwrokNE5jr8+fQUx9+2fo/JF5ffspCTFUlJPt08f371/PLm6tm/vtVmby5rcwGlkYCn3908e3Z5/ewZiILARMHl5fX3F1fPr6+ubCTQ4+PkD/r+NTC0xbPvSXW5/v7ZpbUOdie5p8bELpfPrm++/+76+saqZIRyjCrK5fX199fPn13dfK+qh9+4r/1o9PyzGnBffPf85uLiYqtcRTh33xS1Fe7JcG+jZXv53XfXtMZqKuFOfqzM8JxUzpvvLr8zqqDMAQWrD2bV8eLy8vK77fMr5eIXkdvUwMvLZ99dX9zcXJpUgloAv9JpVRW/v7i8uN4atcruZolhR/n9zfdXF8+udaknExx92z/fPr+5uiF/atp+V9F/CPy0bOiUUl/I9XfPrr+7uL7RrwJTCVb1gPSG319ekf5ZtzCYZ5xwZ9YIry5uLr979vw7U1KTrH737PubZ9cXJhW+vVHrk6kdIt2fWcO/uCKjzvdX1yYShnM0s3b3/Oq752SWdqFc63r8Q4cAVjpuyDBIZmo3z//1tyf/+v8AODY2sQ===END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA