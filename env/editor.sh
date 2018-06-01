#! /bin/bash

x=$1
case $x in
	ai)
		echo -e '\E[00;35m'"\033[1m.. Opening AI-Files.\033[0m"
		cd ~/workspace/src/eros_platform/eros/src/intelligent/
		rmate eheader.h
		rmate main.cpp
		rmate motion.cpp
		rmate tactic.cpp
		rmate strategy.cpp
		rmate thread.cpp
		rmate utility.cpp
		rmate variable.cpp
		;;
	serial)
		echo -e '\E[00;35m'"\033[1m.. Opening Serial.\033[0m"
		cd ~/workspace/src/eros_platform/eros/src/serial/
		rmate serialcom.cpp
		;;
	param_robot)
		echo -e '\E[00;35m'"\033[1m.. Opening Robot Parameter-Files.\033[0m"
		cd ~/workspace/src/eros_platform/eros/
		rmate odometry_correction.yaml
		rmate robot_position.yaml
		;;
	param_settings)
		echo -e '\E[00;35m'"\033[1m.. Opening Settings Parameter-Files.\033[0m"
		cd ~/workspace/src/eros_platform/settings/
		rmate camera_setting.yaml
		;;
	param)
		echo -e '\E[00;35m'"\033[1m.. Opening Settings Param-Files.\033[0m"
		cd ~/param/
		rmate intelligent_parameters.yaml
		;;
	referee)
		echo -e '\E[00;35m'"\033[1m.. Opening Settings Referee-Files.\033[0m"
		cd ~/workspace/src/eros_platform/eros/src/referee/
		rmate referee.cpp
		#rmate refereeBox.cpp
		cd ~/workspace/src/eros_platform/eros/src/communication/
		rmate clientrec.cpp
		;;
	*)
		echo -e '\E[00;31m'"\033[1m.. There is something wrong.\033[0m"
		;;
esac
echo -e "\033[1mdone.\033[0m"
