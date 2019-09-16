#! /bin/bash

sudo systemctl stop NetworkManager
wpa_passphrase "EROSNETWORK" "bismillah" | sudo tee /etc/wpa_supplicant.conf
sudo ifconfig wlp2s0 up
case $HOSTNAME in
	bambang)
		sudo ifconfig wlp2s0 192.168.1.5 netmask 255.255.0.0
	;;
	umar)
		sudo ifconfig wlp2s0 192.168.1.2 netmask 255.255.0.0
	;;
	huda)
		sudo ifconfig wlp2s0 192.168.1.3 netmask 255.255.0.0
	;;
	slamet)
		sudo ifconfig wlp2s0 192.168.1.4 netmask 255.255.0.0
	;;
	*)
		echo -e '\E[00;31m'"\033[1m.. There is something wrong.\033[0m"
	;;
esac
sudo wpa_supplicant -B -iwlp2s0 -c/etc/wpa_supplicant.conf -Dwext;
echo -e "\033[1mdone.\033[0m"
