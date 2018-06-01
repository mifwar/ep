#! /bin/bash

source ~/env/ip_local.sh
source /opt/ros/kinetic/setup.bash
#source ~/reborn_ws/devel/setup.bash
source ~/workspace/install/setup.bash

pkill roscore
pkill eroscore
screen -dmS eroscore ~/env/roscore.sh

sleep 3

x=$1
case $x in
	vision)
		echo -e '\E[00;35m'"\033[1m.. Performing Vision Calibration.\033[0m"
		rosrun settings vkalib
		;;
	calibration)
		echo -e '\E[00;35m'"\033[1m.. Performing Calibration.\033[0m"
		roslaunch calibration calibration_camera_v4l2.launch
		;;
	kepala)
		echo -e '\E[00;35m'"\033[1m.. Performing Kepala Calibration.\033[0m"
		roslaunch settings kepala.launch
		;;
	capture)
		echo -e '\E[00;35m'"\033[1m.. Performing Capture.\033[0m"
		roslaunch settings capture.launch
		;;
	camera)
		echo -e '\E[00;35m'"\033[1m.. Performing Camera Setting.\033[0m"
		#roslaunch settings camera_c920.launch
		guvcview
		;;
	ball)	echo -e '\E[00;35m'"\033[1m.. Performing Show Ball.\033[0m"
		rosrun eros vision show ball
		;;
	*)
		echo -e '\E[00;31m'"\033[1m.. There is something wrong.\033[0m"
		;;
esac
echo -e "\033[1mdone.\033[0m"
