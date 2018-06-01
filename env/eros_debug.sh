#! /bin/bash

source ~/env/ip_local.sh
source /opt/ros/kinetic/setup.bash
#source ~/reborn_ws/devel/setup.bash
source ~/workspace/install/setup.bash

x=$1
case $x in
	main_gui)
		roslaunch eros eros_main_gui.launch
	;;
	main_cli)
		roslaunch eros eros_main_cli.launch
	;;
	vision_gui)
		roslaunch eros soccer_vision_gui.launch
	;;
	vision_cli)
		roslaunch eros soccer_vision_cli.launch
	;;
	intelligent)
		roslaunch eros eros_intelligent.launch
	;;
	rqt)
		rqt
	;;
	*)
		echo -e '\E[00;31m'"\033[1m.. There is something wrong.\033[0m"
	;;
esac
sleep 3
echo -e "\033[1mdone.\033[0m"
