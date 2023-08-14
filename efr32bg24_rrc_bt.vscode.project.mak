####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 15                                              #
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
# SIMPLICITY_STUDIO_METADATA=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=END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA