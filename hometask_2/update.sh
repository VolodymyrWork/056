#!/bin/bash


update_log=/var/log/update-$(date "+%F-%T").log

if apt-get update; then
	echo "$(date "+%F-%T"): Weekley update success" > "$update_log"
else
	echo "$(date "+%F-%T"): Weekley update failed"  > "$update_log"
fi

if sudo apt-get upgrade -y; then
	echo "$(date "+%F-%T"): Weeley upgrade success" >> "$update_log"
else
	echo "$(date "+%F-%T"): Weekley uprade failed" >> "$update_log"
fi

if  apt-get autoclean; then
	echo "$(date "+%F-%T"): Autoclean success" >> "$update_log"
else
        echo "$(date "+%F-%T"): Autoclean failed" >> "$update_log"
fi

