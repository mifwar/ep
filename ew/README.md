robot [name]			-> Insert robot name: bambang | umar | huda | slamet | bejo
platform [name]			-> krsbi | robocup
eros shutdown 			-> Shutdown your robot
eros reboot				-> Reboot your robot
eros checkup serial 	-> Determining USB Serial, make sure that all of them is connected to PC

eros run local			-> Running robot and unplug your LAN Cable [Monitoring using LAN]
eros run wifi			-> Running robot and unplug your LAN Cable [Monitoring using Wifi]
eros echo				-> Echoing debug data after "eros run local" -> checking value of "arahRobot"
eros stop				-> Stop robot after "eros run ..."

eros debug main_cli		-> Running robot without GUI
eros debug main_gui		-> Running robot with GUI
eros debug vision_cli	-> Running soccer_vision without GUI
eros debug vision_gui	-> Running soccer_vision with GUI
eros debug intelligent	-> Running intelligent with debug

eros build [package]	-> Compiling program in "eros_ws_1" | "eros_ws_robocup" platform

eros ping				-> pinging robot

eros set time			-> Synchronize robot time with laptop time
eros set calibration	-> Running calibration in "eros_ws_1" platform
eros set vision			-> Running vkalib for "reborn_ws" platform
eros set kepala			-> Calibrate kepala DOF 19 & 20 degree
eros set camera			-> Open guvcview
eros set capture		-> Running Capture for testing motion and capturing ball

eros set server			-> Set sublime-text server, make sure sublime-text was opened in laptop
eros edit [parameter]	-> Open certain file in sublime text after set server. ai | serial | param | referee | sv

eros guvc 				-> running guvcview via ssh to calibrate robot's camera
eros rcv				-> open EROSTEAMVIEWER to monitor your robot via wifi network


[UPDATE!!]
!! Set your ip_local and ip_wifi inside [master] /env and /envr
