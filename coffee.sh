#!/bin/bash

while [ 1 ]; do

  xdotool mousemove_relative -- -$(($RANDOM % 10)) $(($RANDOM % 10))  &
  xdotool mousemove_relative -- $(($RANDOM % 10)) -$(($RANDOM % 10)) &
  sleep 5
  
done
