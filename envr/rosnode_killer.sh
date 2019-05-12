#!/bin/bash
# file: rosnode_killer.sh

source /opt/ros/kinetic/setup.bash
source ~/eros_ws_robocup/install/setup.bash

rosnode kill -a
sudo pkill ros
