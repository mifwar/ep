#!/usr/bin/env bash
# file: roscore.sh

source ~/remote/ip_local.sh
source /opt/ros/kinetic/setup.bash
source ~/$2/install/setup.bash

roscore
