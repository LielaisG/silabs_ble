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
 -Icustom_board_drivers/Inc \
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
 -I$(SDK_PATH)/platform/emdrv/dmadrv/inc \
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