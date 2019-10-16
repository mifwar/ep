#!/usr/bin/env bash
# file: roslaunch.sh

source ~/env/ip_local.sh
source /opt/ros/kinetic/setup.bash
source ~/eros_ws_1/install/setup.bash

roslaunch settings capture.launch
