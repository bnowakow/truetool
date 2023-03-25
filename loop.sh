#!/bin/bash

# https://stackoverflow.com/a/18216122
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

cd /mnt/MargokPool/home/sup/code/truetool

while true; do 
    ./single-run.sh
    sleep 3600; 
done

