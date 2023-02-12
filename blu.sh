#!/bin/bash

# Define the MAC address of the Bluetooth device
device_mac="E8:7F:6B:E9:4A:5D"
# device_mac="90:9C:4A:E7:E7:E1"

# Connect to the Bluetooth device
echo -e "power on\nconnect $device_mac\nquit" | bluetoothctl

# Wait for the connection to complete
sleep 5

echo "Successfully connected to the device."
exit 0
fi
