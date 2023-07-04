################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../gecko_sdk_4.3.0/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.c 

OBJS += \
./gecko_sdk_4.3.0/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.o 

C_DEPS += \
./gecko_sdk_4.3.0/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.3.0/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.o: ../gecko_sdk_4.3.0/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.c gecko_sdk_4.3.0/app/bluetooth/common/in_place_ota_dfu/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DBGM220PC22HNA=1' '-DSL_APP_PROPERTIES=1' '-DBOOTLOADER_APPLOADER=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' '-DSLI_RADIOAES_REQUIRES_MASKING=1' -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\config" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\config\btconf" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\Device\SiliconLabs\BGM22\Include" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\app\common\util\app_assert" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\app\common\util\app_log" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\protocol\bluetooth\inc" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\common\inc" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\protocol\bluetooth\bgstack\ll\inc" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\hardware\board\inc" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\bootloader" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\bootloader\api" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\CMSIS\Core\Include" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\hardware\driver\configuration_over_swo\inc" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\security\sl_component\sl_cryptoacc_library\include" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\security\sl_component\sl_cryptoacc_library\src" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\driver\debug\inc" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\service\device_init\inc" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\emdrv\dmadrv\inc" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\emdrv\common\inc" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\emlib\inc" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\radio\rail_lib\plugin\fem_util" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\app\bluetooth\common\gatt_service_device_information" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\app\bluetooth\common\in_place_ota_dfu" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\service\iostream\inc" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\driver\leddrv\inc" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\security\sl_component\sl_mbedtls_support\config" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\security\sl_component\sl_mbedtls_support\inc" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\util\third_party\mbedtls\include" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\util\third_party\mbedtls\library" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\service\mpu\inc" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\emdrv\nvm3\inc" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\service\power_manager\inc" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\security\sl_component\sl_psa_driver\inc" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\radio\rail_lib\common" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\radio\rail_lib\protocol\ble" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\radio\rail_lib\protocol\ieee802154" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\radio\rail_lib\protocol\wmbus" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\radio\rail_lib\protocol\zwave" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\radio\rail_lib\chip\efr32\efr32xg2x" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\radio\rail_lib\plugin\pa-conversions" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\radio\rail_lib\plugin\pa-conversions\efr32xg22" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\radio\rail_lib\plugin\rail_util_power_manager_init" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\radio\rail_lib\plugin\rail_util_pti" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\security\sl_component\se_manager\inc" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\security\sl_component\se_manager\src" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\util\silicon_labs\silabs_core\memory_manager" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\common\toolchain\inc" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\service\system\inc" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\service\sleeptimer\inc" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\gecko_sdk_4.3.0\platform\security\sl_component\sl_protocol_crypto\src" -I"C:\Work\SiliconLabs\SimplicityStudio\v5_workspace\bt_soc_empty\autogen" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.0/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


