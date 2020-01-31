#!/bin/bash

if [ $1 = 0 ]; then
	if [ $# -gt 1 ]; then
		nvidia-settings -a "[gpu:$2]/GPUFanControlState=0"
	else
		nvidia-settings -a "GPUFanControlState=0"
	fi
else
	if [ $# -gt 1 ]; then
    	nvidia-settings -a "[gpu:$2]/GPUFanControlState=1" -a "[fan:$2]/GPUTargetFanSpeed=$1"
	else
	    nvidia-settings -a "GPUFanControlState=1" -a "GPUTargetFanSpeed=$1"
	fi
fi

exit 0