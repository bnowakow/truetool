#!/bin/bash

# https://stackoverflow.com/a/18216122
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

while true; do 
    ./truetool.sh -s; 
    date; 
    git remote remove origin
    git remote add origin git@github.com:bnowakow/truetool.git
    git branch --set-upstream-to=origin/bnowakow bnowakow
    sleep 3600; 
done

