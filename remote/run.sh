#!/usr/bin/env bash

source /opt/ros/kinetic/setup.bash
source /home/eros/eros_ws_1/install/setup.bash

x=$1
case $x in
	local)
		echo -e '\E[00;35m'"\033[1m[krsbi] Running main_local.\033[0m"
		screen -dmS eros_main ~/env/main_local.sh
	;;
	wifi)
		echo -e '\E[00;35m'"\033[1m[krsbi] Running main_wifi.\033[0m"
		screen -dmS eros_main ~/env/main_wifi.sh
	;;
	*)
		echo -e '\E[00;35m'"\033[1m[krsbi] There is something wrong.\033[0m"
	;;
esac
echo -e '\E[00;35m'"\033[1m[krsbi] Bismillah KRSBI Juara 1.\033[0m"
sleep 3
echo -e "\033[1mdone.\033[0m"
