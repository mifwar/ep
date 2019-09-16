#! /bin/bash
# file: echo.sh
source ~/env/ip_local.sh
source /opt/ros/kinetic/setup.bash
source ~/eros_ws_1/install/setup.bash

rostopic echo /it_debug
