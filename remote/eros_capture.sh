#!/usr/bin/env bash
# file: roslaunch.sh

source ~/remote/ip_local.sh
source /opt/ros/kinetic/setup.bash
source ~/$2/install/setup.bash

roslaunch settings capture.launch
