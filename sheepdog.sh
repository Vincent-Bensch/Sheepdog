#!/bin/bash

echo " "
echo "-------------------Starting Sheepdog v21-------------------"
echo " "

echo "Cycling TEMP_DIR"
sudo rm -r -f /etc/sheep/TEMP
sudo mkdir /etc/sheep/TEMP

echo "Closing old sessions"
sudo tmux -q kill-session -t Sheepit_A


echo "Starting downloads"
sudo wget -q -O "/etc/sheep/sheepit.jar" https://www.sheepit-renderfarm.com/media/applet/client-latest.php

echo "Collected new sheepit"
sudo wget -q --no-check-certificate --content-disposition --no-cache https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/watermains.sh -O "/etc/sheep/watermains.sh"
sudo wget -q --no-check-certificate --content-disposition --no-cache https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/bark.sh -O "/etc/sheep/bark.sh"

echo "Refreshed command files"
source "/etc/sheep/hydrant.sh"

if [ "$A_SWITCH" = true ] ; then
    echo "Starting APU"
    sudo tmux new-session -d -s Sheepit_A 'java -jar "/etc/sheep/sheepit.jar" -ui text -compute-method GPU -gpu CUDA_0 -memory $A_MEMORY -cores $A_CORES -priority $A_PRIORITY -login "$A_USERNAME" -password "$A_PASSWORD"'
fi


echo "Sheepdog Out"
echo " "