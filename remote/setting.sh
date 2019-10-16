#!/usr/bin/env bash

source ~/remote/ip_local.sh
source /opt/ros/kinetic/setup.bash
source ~/$2/install/setup.bash

pkill roscore
pkill eroscore
screen -dmS eroscore ~/remote/roscore.sh

sleep 3

x=$3
case $x in
	vision)
		echo -e "\033[1m[$1] Performing Vision Calibration.\033[0m"
		rosrun settings vkalib
		;;
	calibration)
		echo -e "\033[1m[$1] Performing Calibration.\033[0m"
		roslaunch calibration calibration_camera_v4l2.launch
		;;
	kepala)
		echo -e "\033[1m[$1] Performing Kepala Calibration.\033[0m"
		roslaunch settings kepala.launch
		;;
	capture)
		echo -e "\033[1m[$1] Performing Capture.\033[0m"
		roslaunch settings capture.launch
		;;
	focus)
		echo -e "\033[1m[$1] Performing Set Focus.\033[0m"
		v4l2-ctl -d /dev/video0 --set-ctrl focus_auto=0
		;;
	camera)
		echo -e "\033[1m[$1] Performing Camera Setting.\033[0m"
		#roslaunch settings camera_c920.launch
		guvcview
		;;
	ball)	echo -e "\033[1m[$1] Performing Show Ball.\033[0m"
		rosrun eros vision show ball
		;;
	*)
		echo -e "\033[1m[$1] Wrong argument.\033[0m"
		;;
esac
echo -e "\033[1mdone.\033[0m"
