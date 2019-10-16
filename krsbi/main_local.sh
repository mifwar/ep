#!/usr/bin/env bash
# file: roslaunch.sh
source ~/env/ip_local.sh
source /opt/ros/kinetic/setup.bash
source ~/eros_ws_1/install/setup.bash

#export ROS_IP=10.42.43.5
#export ROS_HOSTNAME=10.42.43.5
#export ROS_MASTER_URI=http://10.42.43.5:11311

export ROS_IP=127.0.0.1
export ROS_HOSTNAME=127.0.0.1
export ROS_MASTER_URI=http://127.0.0.1:11311
#export ROS_MASTER_URI=http://192.168.1.5:11311
#export ROS_IP=192.168.1.5
#export ROS_HOSTNAME=192.168.1.5
roslaunch eros eros_main_cli.launch