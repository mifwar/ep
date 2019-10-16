#!/usr/bin/env bash

source /opt/ros/kinetic/setup.bash
source ~/$2/devel/setup.bash

echo "Running catkin_make"

cd ~/$2/
catkin_make
