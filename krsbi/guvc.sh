#!/usr/bin/env bash

source ~/env/ip_local.sh
source /opt/ros/kinetic/setup.bash
source ~/eros_ws_1/install/setup.bash

guvcview -z

echo -e "\033[1mopen guvcview-z.\033[0m"
