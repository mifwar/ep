#!/usr/bin/env bash

source /opt/ros/kinetic/setup.bash
source ~/eros_ws_1/devel/setup.bash
echo ".. Running catkin_make"
cd ~/eros_ws_1/
catkin_make
echo "done."
