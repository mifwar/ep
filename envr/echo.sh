#! /bin/bash
# file: echo.sh
source ~/envr/ip_local.sh
source /opt/ros/kinetic/setup.bash
source ~/eros_ws_robocup/install/setup.bash

rostopic echo /it_debug
