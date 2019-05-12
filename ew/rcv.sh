#!/bin/bash

x=$2
case $x in
	bambang)
		system("./rcv8/build-rcv8-Desktop-Debug/rcv8 $input bambang")
		;;
	umar)
		system("./rcv8/build-rcv8-Desktop-Debug/rcv8 $input umar")
		;;
	huda)
		system("./rcv8/build-rcv8-Desktop-Debug/rcv8 $input huda")
		;;
	slamet)
		system("./rcv8/build-rcv8-Desktop-Debug/rcv8 $input slamet")
		;;
	*)
		echo ".. There is something wrong."
		;;
esac
# export ROS_IP=hostname --all-ip-addresses
# export ROS_HOSTNAME=hostname