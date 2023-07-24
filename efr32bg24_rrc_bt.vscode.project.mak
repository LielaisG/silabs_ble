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