#!/bin/bash

source ~/catkin_ws/devel/setup.bash
x=$1
case $x in
	umar)
		echo ".. Memulai monitoring Umar.."
		export ROS_MASTER_URI=http://192.168.1.2:11311
		;;
	slamet)
		echo ".. Memulai monitoring Slamet.."
		export ROS_MASTER_URI=http://192.168.1.4:11311
		;;
	huda)
		echo ".. Memulai monitoring huda.."
		export ROS_MASTER_URI=http://192.168.1.3:11311
		;;
	*)
		echo ".. There is something wrong."
		;;
esac
# export ROS_IP=hostname --all-ip-addresses
# export ROS_HOSTNAME=hostname
rosrun qdude qdude
echo "done."
