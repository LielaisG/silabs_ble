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

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_iadc.o: $(SDK_PATH)/platform/emlib/src/em_iadc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_iadc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_iadc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_iadc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_iadc.o

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