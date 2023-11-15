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
cd $user_dir
