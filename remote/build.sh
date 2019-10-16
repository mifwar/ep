#!/usr/bin/env bash

source /opt/ros/kinetic/setup.bash
source ~/$2/install/setup.bash

echo -e "\033[1m[$1] Bismillah KRSBI Juara 1.\033[0m"
echo -e "\033[1m[$1] Running catkin build.\033[0m"

x=$3
cd ~/$2/
catkin build $x --cmake-args -DCMAKE_BUILD_TYPE=Release
echo -e "\033[1mdone.\033[0m"
