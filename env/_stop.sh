#! /bin/bash

echo -e '\E[00;35m'"\033[1m[krsbi] Stopping EROS Platform.\033[0m"
pkill eros_launch
sleep 2
echo -e "\033[1mdone.\033[0m"
