#!/bin/bash
# file: rosnode_killer.sh

source /opt/ros/kinetic/setup.bash
source ~/eros_ws_1/install/setup.bash

rosnode kill -a
sudo pkill ros
