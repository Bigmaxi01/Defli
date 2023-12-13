#!/bin/bash
# Remove Defli MongoDB connector
# Written by Bigmaxi
#
# last modified: 2023-11-15


#enforce sudo
if ! [[ $EUID = 0 ]]; then
    echo "Please run this script with 'sudo'..."
    exit 1
fi

#change to user's home dir
user_dir=$(getent passwd ${SUDO_USER:-$USER} | cut -d: -f6)
echo "user_dir = $user_dir"
cd $user_dir

#get the user name
user_name=sudo who am i | awk '{print $1}'


service_file_path="/lib/systemd/system/adsb_collector.service"

#remove any existing adsb_collector.service file and program directory
if [ -e "$service_file_path" ]; then
	echo "Disable and removing existing adsb_collector service file and deleting the adsb-data-collector-mongodb directory ..."
	#  systemctl stop adsb_collector
  	systemctl disable --now adsb_collector 
	rm -f /lib/systemd/system/adsb_collector.service
	rm -fr adsb-data-collector-mongodb
 else
  	echo "*** Service file /lib/systemd/system/adsb_collector.service not found..."
  	echo "*** adsb_collector service not installed."
fi


