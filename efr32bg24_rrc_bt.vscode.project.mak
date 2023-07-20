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
 '-DBGM240SA22VNA=1' \
 '-DSL_APP_PROPERTIES=1' \
 '-DBOOTLOADER_APPLOADER=1' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' \
 '-DSLI_RADIOAES_REQUIRES_MASKING=1'

ASM_DEFS += \
 '-DBGM240SA22VNA=1' \
 '-DSL_APP_PROPERTIES=1' \
 '-DBOOTLOADER_APPLOADER=1' \
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
 -I$(SDK_PATH)/platform/Device/SiliconLabs/BGM24/Include \
 -I$(SDK_PATH)/app/common/util/app_assert \
 -I$(SDK_PATH)/protocol/bluetooth/inc \
 -I$(SDK_PATH)/platform/common/inc \
 -I$(SDK_PATH)/protocol/bluetooth/bgstack/ll/inc \
 -I$(SDK_PATH)/platform/bootloader \
 -I$(SDK_PATH)/platform/bootloader/api \
 -I$(SDK_PATH)/platform/CMSIS/Core/Include \
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
 -Icustom_board_drivers/Inc

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lgcc \
 -lc \
 -lm \
 -lnosys \
 $(SDK_PATH)/protocol/bluetooth/lib/EFR32XG24/GCC/libbluetooth.a \
 $(SDK_PATH)/platform/emdrv/nvm3/lib/libnvm3_CM33_gcc.a \
 $(SDK_PATH)/platform/radio/rail_lib/autogen/librail_release/librail_config_bgm240sa22vna_gcc.a \
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
 -O0 \
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
 -O0 \
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

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/BGM24/Source/startup_bgm24.o: $(SDK_PATH)/platform/Device/SiliconLabs/BGM24/Source/startup_bgm24.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/BGM24/Source/startup_bgm24.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/BGM24/Source/startup_bgm24.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/BGM24/Source/startup_bgm24.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/BGM24/Source/startup_bgm24.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/BGM24/Source/system_bgm24.o: $(SDK_PATH)/platform/Device/SiliconLabs/BGM24/Source/system_bgm24.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/BGM24/Source/system_bgm24.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/BGM24/Source/system_bgm24.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/BGM24/Source/system_bgm24.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/BGM24/Source/system_bgm24.o

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

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s2.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfrco.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfrco.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfrco.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfrco.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfrco.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfrco.o

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