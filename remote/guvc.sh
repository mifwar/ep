#!/usr/bin/env bash

source ~/remote/ip_local.sh
source /opt/ros/kinetic/setup.bash
source ~/$2/install/setup.bash

guvcview -z

echo -e "\033[1mopen guvcview-z.\033[0m"
