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
 -I$(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src

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