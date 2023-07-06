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
 -I$(SDK_PATH)/platform/common/inc \
 -I$(SDK_PATH)/protocol/bluetooth/inc \
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