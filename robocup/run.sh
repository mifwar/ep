#!/usr/bin/env bash

source /opt/ros/kinetic/setup.bash
source /home/eros/eros_ws_robocup/install/setup.bash

x=$1
case $x in
	local)
		echo -e '\E[00;35m'"\033[1m[robocup] Running main_local.\033[0m"
		screen -dmS eros_main ~/envr/main_local.sh
	;;
	wifi)
		echo -e '\E[00;35m'"\033[1m[robocup] Running main_wifi.\033[0m"
		screen -dmS eros_main ~/envr/main_wifi.sh
	;;
	*)
		echo -e '\E[00;35m'"\033[1m[robocup] There is something wrong.\033[0m"
	;;
esac
echo -e '\E[00;35m'"\033[1m[robocup] Bismillah ROBOCUP Juara 1.\033[0m"
sleep 3
echo -e "\033[1mdone.\033[0m"
