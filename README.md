# EROS CLI - Usage

## Operasi pemilihan

- `robot [name]`		-> bambang | umar | huda | slamet | bejo
- `platform [name]`		-> krsbi | robocup

## Operasi komputer

- `eros shutdown` 		-> Shutdown robot yang dipilih
- `eros reboot`			-> Reboot robot yang dipilih
- `eros checkup serial` -> Mengecek serial. Pastikan semuanya sudah terhubung.

## Operasi software

- `eros run local`		-> Running robot [Monitoring dengan LAN]
- `eros run wifi`		-> Running robot lalu cabut kabel LAN [Monitoring dengan Wifi]
- `eros echo`			-> Echo data debug sesudah `eros run local` (periksa nilai **arahRobot**)
- `eros stop`			-> Stop robot sesudah `eros run`

## Operasi komponen

- `eros debug main_cli`		-> Running robot without GUI
- `eros debug main_gui`		-> Running robot with GUI
- `eros debug vision_cli`	-> Running soccer_vision without GUI
- `eros debug vision_gui`	-> Running soccer_vision with GUI
- `eros debug intelligent`	-> Running intelligent with debug

## Operasi compiling

- `eros build [package]`	-> Compiling program in "eros_ws_1" | "eros_ws_robocup" platform

## Operasi ping

- `eros ping`				-> pinging robot

## Operasi set robot

- `eros set time`			-> Synchronize robot time with laptop time
- `eros set calibration`	-> Running calibration in "eros_ws_1" platform
- `eros set vision`			-> Running vkalib for "reborn_ws" platform
- `eros set kepala`			-> Calibrate kepala DOF 19 & 20 degree
- `eros set camera`			-> Open guvcview
- `eros set capture`		-> Running Capture for testing motion and capturing ball

## Operasi set komputer

- `eros set server`				-> Set sublime-text server, make sure sublime-text was opened in laptop
- `eros edit [parameter]`		-> Open certain file in sublime text after set server. ai | serial | param | referee | sv

# [!!UPDATE!!]
**Set your ip_local and ip_wifi inside `/krsbi` and `/robocup`** 
# [Membuat persistent link USB](https://gist.github.com/YandiBanyuKarimaWaly/5c3d674aff8b9a6d30f8be5203faf355)