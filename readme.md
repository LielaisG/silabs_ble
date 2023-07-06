# BLE_MITM

> Note: this example expects a specific Gecko Bootloader to be present on your device. The Bluetooth SoC-Empty example is a project that serves as a template for this standalone Bluetooth application.

## Overview ##

This project shows the implementation of Man-In-The-Middle with BLE. It demonstrates how to avoid this vulnerability. It will show how we can prevent the risk in the MITM attack with BLE configuration. This project makes an Man-In-The-Middle example in case of using the thermometer server that connects to smartphone and MITM device in between that wants to eavesdrop.

Hardware Required:
- MITM device: BRD4314A BGM220 Explorer Kit
- Thermometer server: Wireless Pro Kit with the BRD4316A Radio Board

Gecko SDK Suite version - 4.3.0

## Getting Started

The development of a Bluetooth applications consist of three main steps:
* Designing the GATT database
* Responding to the events raised by the Bluetooth stack
* Implementing additional application logic

## Prepare Project environment

Open the .slcp file. Select the SOFTWARE COMPONENTS tab and install the software components:
- [Services] → [IO Stream] → [IO Stream: USART] → default instance name: **vcom**
- [Application] → [Utility] → [Log]
- [Application] → [Utility] → [Assert]
- [Platform] → [Driver] → [I2C] → [I2CSPM] → default instance name: **sensor**
- [Bluetooth] → [GATT] → [Health Thermometer API]
- [Application] → [Sensor] → [Relative Humidity and Temperature sensor]
- [Application] → [Services] → [Simple timer service]
- [Platform] → [Board] → [Board Control] → enable *Virtual COM UART*

## Designing the GATT Database

The SOC-empty example implements a basic GATT database. 
Import the GATT configuration:
1. Open the .slcp file in the project.
2. Select the CONFIGURATION TOOLS tab and open the Bluetooth GATT Configurator.
3. Find the Import button and import the attached config/btconf/gatt_configuration.btconf file.
4. Save the GATT configuration (ctrl-s).


## Responding to Bluetooth Events

