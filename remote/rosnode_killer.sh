#!/usr/bin/env bash
# file: rosnode_killer.sh

source /opt/ros/kinetic/setup.bash
source ~/eros_ws_1/install/setup.bash

rosnode kill -a
sudo pkill ros
echo -e "\033[1mdone.\033[0m"
