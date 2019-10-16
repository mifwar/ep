#!/usr/bin/env bash

source ~/remote/ip_local.sh
source /opt/ros/kinetic/setup.bash
source ~/$2/install/setup.bash

x=$3
case $x in
	main_gui)
		echo -e "\033[1m[$1] Debugging main_gui.\033[0m"
		roslaunch eros eros_main_gui.launch
	;;
	main_cli)
		echo -e "\033[1m[$1] Debugging main_cli.\033[0m"
		roslaunch eros eros_main_cli.launch
	;;
	vision_gui)
		echo -e "\033[1m[$1] Debugging vision_gui.\033[0m"
		roslaunch eros soccer_vision_gui.launch
	;;
	vision_cli)
		echo -e "\033[1m[$1] Debugging vision_cli.\033[0m"
		roslaunch eros soccer_vision_cli.launch
	;;
	intelligent)
		echo -e "\033[1m[$1] Debugging intelligent.\033[0m"
		roslaunch eros eros_intelligent.launch
	;;
	rqt)
		rqt
	;;
	*)
		echo -e "\033[1m[$1] Wrong argument.\033[0m"
	;;
esac
sleep 3
echo -e "\033[1mdone.\033[0m"
