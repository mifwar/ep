#! /bin/bash

source ~/env/ip_local.sh
source /opt/ros/kinetic/setup.bash
source ~/eros_ws_1/install/setup.bash

x=$1
case $x in
	all)
		echo -e '\E[00;35m'"\033[1m[krsbi] Performing Checkup All.\033[0m"
		rosrun settings serial_checkup
		;;
	serial)
		echo -e '\E[00;35m'"\033[1m[krsbi] Performing Serial Checkup.\033[0m"
		rosrun settings serial_checkup
		;;
	*)
		echo -e '\E[00;31m'"\033[1m[krsbi] There is something wrong.\033[0m"
		;;
esac
echo -e "\033[1mdone.\033[0m"
