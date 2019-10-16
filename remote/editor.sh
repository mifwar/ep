#!/usr/bin/env bash

x=$3
case $x in
	ai)
		echo -e "\033[1m[$1] Opening AI-Files.\033[0m"
		cd ~/$2/src/eros_platform/eros/src/intelligent/
		rmate eheader.h
		rmate main.cpp
		rmate motion.cpp
		rmate tactic.cpp
		rmate strategy.cpp
		rmate thread.cpp
		rmate utility.cpp
		rmate variable.cpp
		rmate localization.cpp
		;;
	serial)
		echo -e "\033[1m[$1] Opening Serial.\033[0m"
		cd ~/$2/src/eros_platform/eros/src/serial/
		rmate serialcom.cpp
		;;
	param_robot)
		echo -e "\033[1m[$1] Opening Robot Parameter-Files.\033[0m"
		cd ~/$2/src/eros_platform/eros/
		rmate odometry_correction.yaml
		rmate robot_position.yaml
		;;
	param_settings)
		echo -e "\033[1m[$1] Opening Settings Parameter-Files.\033[0m"
		cd ~/$2/src/eros_platform/settings/
		rmate camera_setting.yaml
		;;
	param_camera)
		echo -e "\033[1m[$1] Opening Settings Parameter-Files.\033[0m"
		cd ~/$2/src/eros/cv/camera_v4l2/launch
		rmate cam_params.yaml
		;;
	param)
		echo -e "\033[1m[$1] Opening Settings Param-Files.\033[0m"
		cd ~/param/
		rmate intelligent_parameters.yaml
		;;
	referee)
		echo -e "\033[1m[$1] Opening Settings Referee-Files.\033[0m"
		cd ~/$2/src/eros_platform/eros/src/referee/
		rmate referee.cpp
		rmate refereeBox.cpp
		cd ~/$2/src/eros_platform/eros/src/communication/
		rmate clientrec.cpp
		;;
	sv)
		echo -e "\033[1m[$1] Opening Settings Soccer Vision.\033[0m"
		cd ~/$2/src/eros/cv/soccer_vision/src/
		rmate soccer_vision.cpp
		rmate soccer_vision.h
		rmate findBall.cpp
		rmate findBall.h
		;;
	msg)
		echo -e "\033[1m[$1] Opening Settings EROS Messages.\033[0m"
		cd ~/$2/src/eros_platform/eros/msg/
		rmate it_debug.msg
		rmate it_rec.msg
		rmate it_serial.msg
		rmate it_vision.msg
		rmate rec_it.msg
		rmate referee_it.msg
		rmate serial_it.msg
		rmate vision_it.msg
		;;

	*)
		echo -e "\033[1m[$1] Wrong argument.\033[0m"
		;;
esac
echo -e "\033[1mdone.\033[0m"
