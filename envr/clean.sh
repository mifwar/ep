#! /bin/bash

source /opt/ros/kinetic/setup.bash
source ~/eros_ws_1/install/setup.bash
echo -e '\E[00;35m'"\033[1m[krsbi] Bismillah KRSBI Juara 1.\033[0m"
echo -e '\E[00;35m'"\033[1m[krsbi] Running catkin clean.\033[0m"
x=$1
cd ~/eros_ws_robocup/
catkin clean $x
echo -e "\033[1mdone.\033[0m"
