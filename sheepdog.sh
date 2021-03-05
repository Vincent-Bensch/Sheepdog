#!/bin/bash

echo " "
echo "-------------------Starting Sheepdog v19-------------------"
echo " "

full_path=$(realpath $0)
dir_path=$(dirname $full_path)

echo "Removing logs"

sudo rm -f $dirpath/CPU_log.txt
sudo rm -f $dirpath/GPU_log.txt

echo "Closing old sessions"
sudo tmux -q kill-session -t GPU
sudo tmux -q kill-session -t CPU

echo "Starting downloads"

sudo wget -q -O $dirpath/sheepit.jar https://www.sheepit-renderfarm.com/media/applet/client-latest.php

echo "Collected new sheepit"

sudo wget -q --no-check-certificate --content-disposition --no-cache https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/launch.sh -O $dirpath/launch.sh
sudo wget -q --no-check-certificate --content-disposition --no-cache https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/hydrant.sh -O $dirpath/hydrant.sh
sudo wget -q --no-check-certificate --content-disposition --no-cache https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/bark_CPU.sh -O $dirpath/bark_CPU.sh
sudo wget -q --no-check-certificate --content-disposition --no-cache https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/bark_GPU.sh -O $dirpath/bark_GPU.sh

echo "Refreshed command files"

source $dirpath/hydrant.sh

echo "Loaded username"

echo " "
echo "Logging in as: $TAIL_USERNAME"
echo " "

sudo tmux new-session -d -s GPU 'sudo bash $dirpath//bark_GPU.sh'
sudo tmux new-session -d -s CPU 'sudo bash $dirpath/bark_CPU.sh'

echo "Sheepdog Out"
echo " "