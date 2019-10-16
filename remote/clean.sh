#!/usr/bin/env bash

source /opt/ros/kinetic/setup.bash
source ~/$2/install/setup.bash

echo -e "\033[1m[$1] Bismillah KRSBI Juara 1.\033[0m"
echo -e "\033[1m[$1] Running catkin clean.\033[0m"

x=$3
cd ~/$2/

catkin clean $x
echo -e "\033[1mdone.\033[0m"
