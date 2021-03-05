#!/bin/bash

echo " "
echo "-------------------Starting Launcher v20-------------------"
echo " "

PATH = "/etc/sheep"

echo "Getting current sheepdog"

sudo wget -q --no-check-certificate --content-disposition --no-cache  https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/sheepdog.sh -O "$PATH/sheepdog.sh"

echo "Calling sheepdog"

sudo bash "$PATH/sheepdog.sh"