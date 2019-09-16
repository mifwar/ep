#!/bin/bash
# file: roslaunch.sh

source ~/envr/ip_local.sh
source /opt/ros/kinetic/setup.bash
source ~/eros_ws_robocup/install/setup.bash

roslaunch settings capture_goalpost.launch
