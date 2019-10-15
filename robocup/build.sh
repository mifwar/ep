#!/usr/bin/env bash

source /opt/ros/kinetic/setup.bash
source ~/eros_ws_robocup/install/setup.bash
echo -e '\E[00;35m'"\033[1m[robocup] Bismillah ROBOCUP Juara 1.\033[0m"
echo -e '\E[00;35m'"\033[1m[robocup] Running catkin build.\033[0m"
x=$1
cd ~/eros_ws_robocup/
catkin build $x --cmake-args -DCMAKE_BUILD_TYPE=Release
echo -e "\033[1mdone.\033[0m"
