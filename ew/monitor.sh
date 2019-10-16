#!/usr/bin/env bash

source ~/catkin_ws/devel/setup.bash
x=$3
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
	bambang)
		echo ".. Memulai monitoring bambang.."
		export ROS_MASTER_URI=http://192.168.1.5:11311
		;;
	*)
		echo ".. Wrong argument (umar | slamet | huda | bambang | bejo)."
		;;
esac

rosrun qdude qdude
killall qdude
