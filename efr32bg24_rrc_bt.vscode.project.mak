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