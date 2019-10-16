#!/usr/bin/env bash

echo -e "\033[1m[$1] Stopping EROS Platform.\033[0m"
pkill eros_launch
sleep 2
echo -e "\033[1mdone.\033[0m"
