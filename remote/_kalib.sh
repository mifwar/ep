#!/usr/bin/env bash

source /opt/ros/kinetic/setup.bash
source ~/$2/devel/setup.bash

export ROS_IP=127.0.0.1
export ROS_HOSTNAME=127.0.0.1
export ROS_MASTER_URI=http://127.0.0.1:11311

x=$3
case $x in
	vision)
		echo "Performing Vision Calibration..."
		rosrun settings vkalib
		;;
	kepala)
		echo "Performing Kepala Calibration..."
		roslaunch settings kepala.launch
		;;
	camera)
		echo "Performing Camera Setting..."
		roslaunch settings camera_c920.launch
		;;
	ball)	echo "Performing Show Ball..."
		rosrun eros vision show ball
		;;
	*)
		echo "There is something wrong."
		;;
esac
