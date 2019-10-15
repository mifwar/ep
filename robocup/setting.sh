#!/usr/bin/env bash

source ~/envr/ip_local.sh
source /opt/ros/kinetic/setup.bash
source ~/eros_ws_robocup/install/setup.bash

pkill roscore
pkill eroscore
screen -dmS eroscore ~/envr/roscore.sh

sleep 3

x=$1
case $x in
	vision)
		echo -e '\E[00;35m'"\033[1m[robocup] Performing Vision Calibration.\033[0m"
		rosrun settings vkalib
		;;
	calibration)
		echo -e '\E[00;35m'"\033[1m[robocup] Performing Calibration.\033[0m"
		roslaunch calibration calibration_camera_v4l2.launch
		;;
	kepala)
		echo -e '\E[00;35m'"\033[1m[robocup] Performing Kepala Calibration.\033[0m"
		roslaunch settings kepala.launch
		;;
	capture)
		echo -e '\E[00;35m'"\033[1m[robocup] Performing Capture.\033[0m"
		roslaunch settings capture.launch
		;;
	focus)
		echo -e '\E[00;35m'"\033[1m[robocup] Performing Set Focus.\033[0m"
		v4l2-ctl -d /dev/video0 --set-ctrl focus_auto=0
		;;
	camera)
		echo -e '\E[00;35m'"\033[1m[robocup] Performing Camera Setting.\033[0m"
		#roslaunch settings camera_c920.launch
		guvcview
		;;
	ball)	echo -e '\E[00;35m'"\033[1m[robocup] Performing Show Ball.\033[0m"
		rosrun eros vision show ball
		;;
	*)
		echo -e '\E[00;31m'"\033[1m[robocup] There is something wrong.\033[0m"
		;;
esac
echo -e "\033[1mdone.\033[0m"
