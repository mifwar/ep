#!/usr/bin/env bash

source ~/remote/ip_local.sh
source /opt/ros/kinetic/setup.bash
source ~/$2/install/setup.bash

x=$3
case $x in
	all)
		echo -e "\033[1m[$1] Performing Checkup All.\033[0m"
		rosrun settings serial_checkup
		;;
	serial)
		echo -e "\033[1m[$1] Performing Serial Checkup.\033[0m"
		rosrun settings serial_checkup
		;;
	*)
		echo -e "\033[1m[$1] Wrong argumen (all | serial).\033[0m"
		;;
esac
echo -e "\033[1mdone.\033[0m"
