#!/bin/bash

# Define the MAC address of the Bluetooth device
device_mac="XX:XX:XX:XX:XX:XX"

# Connect to the Bluetooth device
echo -e "power on\nconnect $device_mac\nquit" | bluetoothctl

# Wait for the connection to complete
sleep 5

# Verify that the device is connected
connected_devices=$(hcitool con | grep "$device_mac")
if [[ -z "$connected_devices" ]]; then
  echo "Error: Failed to connect to the device."
  exit 1
else
  echo "Successfully connected to the device."
  exit 0
fi
