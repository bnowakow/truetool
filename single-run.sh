#!/bin/bash

# https://stackoverflow.com/a/18216122
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

./truetool.sh -s; 
git remote remove origin
git remote add origin git@github.com:bnowakow/truetool.git
su sup -c "git branch --set-upstream-to=origin/bnowakow bnowakow"
date;

