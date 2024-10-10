#!/bin/bash

# Command to get current battery level
COMMAND='powershell.exe -Command (Get-WmiObject -Class Win32_Battery).EstimatedChargeRemaining'

# Run commands at each second
while true; do
	echo -n "Time: "
	echo -n "$(date +"%Y-%m-%dT%H:%M:%S"), "
	echo -n "Battery Level: "
	# Executes the command
	# Note: output of this command contains \r
	echo -n $($COMMAND)
    sleep 1
done
