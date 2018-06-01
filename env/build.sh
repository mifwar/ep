#! /bin/bash

source /opt/ros/kinetic/setup.bash
source ~/workspace/install/setup.bash
echo -e '\E[00;35m'"\033[1m.. Running catkin build.\033[0m"
x=$1
cd ~/workspace/
catkin build $x
echo -e "\033[1mdone.\033[0m"
