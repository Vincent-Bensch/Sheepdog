#!/bin/bash

echo " "
echo "-------------------Starting Sheepdog v20-------------------"
echo " "

echo "Removing logs"

sudo rm -f "/etc/sheep/CPU.log"
sudo rm -f "/etc/sheep/GPU.log"
sudo rm -f "/etc/sheep/APU.log"

echo "Closing old sessions"
sudo tmux -q kill-session -t GPU
sudo tmux -q kill-session -t CPU
sudo tmux -q kill-session -t APU

echo "Starting downloads"

sudo wget -q -O "/etc/sheep/sheepit.jar" https://www.sheepit-renderfarm.com/media/applet/client-latest.php

echo "Collected new sheepit"

sudo wget -q --no-check-certificate --content-disposition --no-cache https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/launch.sh -O "/etc/sheep/launch.sh"
sudo wget -q --no-check-certificate --content-disposition --no-cache https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/hydrant.sh -O "/etc/sheep/hydrant.sh"
sudo wget -q --no-check-certificate --content-disposition --no-cache https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/bark_CPU.sh -O "/etc/sheep/bark_CPU.sh"
sudo wget -q --no-check-certificate --content-disposition --no-cache https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/bark_GPU.sh -O "/etc/sheep/bark_GPU.sh"

echo "Refreshed command files"

source "/etc/sheep/hydrant.sh"

echo "Loaded username"

echo " "
echo "Logging in as: $TAIL_USERNAME"
echo " "

sudo tmux new-session -d -s GPU "sudo bash /etc/sheep/bark_GPU.sh >> /etc/sheep/GPU.log"
sudo tmux new-session -d -s CPU "sudo bash /etc/sheep/bark_CPU.sh >> /etc/sheep/CPU.log"

echo "Sheepdog Out"
echo " "