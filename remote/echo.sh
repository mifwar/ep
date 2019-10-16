#!/usr/bin/env bash
# file: echo.sh
source ~/remote/ip_local.sh
source /opt/ros/kinetic/setup.bash
source ~/$2/install/setup.bash

rostopic echo /it_debug
