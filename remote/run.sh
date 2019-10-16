#!/usr/bin/env bash

source /opt/ros/kinetic/setup.bash
source /home/eros/$2/install/setup.bash

x=$3
case $x in
	local)
		echo -e "\033[1m[$1] Running main_local.\033[0m"
		screen -dmS eros_main $(~/remote/main_local.sh $2)
	;;
	wifi)
		echo -e "\033[1m[$1] Running main_wifi.\033[0m"
		screen -dmS eros_main $(~/remote/main_wifi.sh $2)
	;;
	*)
		echo -e "\033[1m[$1] Wrong argument (local | wifi).\033[0m"
	;;
esac
echo -e "\033[1m[$1] Bismillah KRSBI Juara 1.\033[0m"
sleep 3
echo -e "\033[1mdone.\033[0m"
