#!/bin/bash

#Device address map
ADD_LTC4100_READ=0x09
ADD_SMBUS_SYSTEM_HOST=0x10
ADD_SMART_BATTERY_CHARGER=0x12
ADD_SMART_BATTERY_SELECTOR=0x14
ADD_SMART_BATTERY=0x16

#ReadOnly LTC4100 Register
LTC4100_CHARGER_SPEC_INFO=0x11
LTC4100_CHARGER_STATUS=0x13

#WriteOnly LTC4100 Register
LTC4100_CHARGER_MODE=0x12
LTC4100_CHARGING_CURRENT=0x14
LTC4100_CHARGING_VOLTAGE=0x15
LTC4100_ALARM_WARNING=0x16

#Read/Write LTC4100 Register
LTC4100_LTCO=0x3C


echo 'Set charging voltage to : ' $1 ' mV'
i2cset -y 1 $ADD_LTC4100_READ $LTC4100_CHARGING_VOLTAGE $1 w


echo 'Set charging current to : ' $2 ' mA'
i2cset -y 1 $ADD_LTC4100_READ $LTC4100_CHARGING_CURRENT $2 w
