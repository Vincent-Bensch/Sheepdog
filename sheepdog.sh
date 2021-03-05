#!/bin/bash

echo " "
echo "-------------------Starting Sheepdog v20-------------------"
echo " "

PATH = "/etc/sheep"

echo "Removing logs"

sudo rm -f "$PATH/CPU_log.txt"
sudo rm -f "$PATH/GPU_log.txt"

echo "Closing old sessions"
sudo tmux -q kill-session -t GPU
sudo tmux -q kill-session -t CPU

echo "Starting downloads"

sudo wget -q -O "$PATH/sheepit.jar" https://www.sheepit-renderfarm.com/media/applet/client-latest.php

echo "Collected new sheepit"

sudo wget -q --no-check-certificate --content-disposition --no-cache https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/launch.sh -O "$PATH/launch.sh"
sudo wget -q --no-check-certificate --content-disposition --no-cache https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/hydrant.sh -O "$PATH/hydrant.sh"
sudo wget -q --no-check-certificate --content-disposition --no-cache https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/bark_CPU.sh -O "$PATH/bark_CPU.sh"
sudo wget -q --no-check-certificate --content-disposition --no-cache https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/bark_GPU.sh -O "$PATH/bark_GPU.sh"

echo "Refreshed command files"

source "$PATH/hydrant.sh"

echo "Loaded username"

echo " "
echo "Logging in as: $TAIL_USERNAME"
echo " "

sudo tmux new-session -d -s GPU "sudo bash $PATH/bark_GPU.sh"
sudo tmux new-session -d -s CPU "sudo bash $PATH/bark_CPU.sh"

echo "Sheepdog Out"
echo " "