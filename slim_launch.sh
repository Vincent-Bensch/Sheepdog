#!/bin/bash

echo " "
echo "-------------------Starting Launcher v16-------------------"
echo " "

echo "Getting current sheepdog"

sudo wget -q --no-check-certificate --content-disposition --no-cache  https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/slim_sheepdog.sh -O slim_sheepdog.sh

echo "Calling sheepdog"

sudo bash slim_sheepdog.sh