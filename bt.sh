#!/bin/bash
bluetoothctl scan on & pid=$!
sleep 5
kill $pid > /dev/null 2>&1
bluetoothctl pair XX:XX:XX:XX:XX:XX 
bluetoothctl trust XX:XX:XX:XX:XX:XX
bluetoothctl connect XX:XX:XX:XX:XX:XX
