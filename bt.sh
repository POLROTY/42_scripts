#!/bin/bash

# Define the MAC address of the Bluetooth device
device_mac="XX:XX:XX:XX:XX:XX"

# Turn on Bluetooth
echo -e "power on\n" | bluetoothctl

# Wait for Bluetooth to turn on
sleep 3

# Scan for the Bluetooth device
echo -e "scan on\n" | bluetoothctl

# Wait for the scan to complete
sleep 15

# Connect to the Bluetooth device
echo -e "connect $device_mac\nquit" | bluetoothctl

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
