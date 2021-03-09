#!/bin/bash

echo " "
echo "-------------------Starting Launcher v23-------------------"
echo " "

echo "Getting current sheepdog"

sudo wget -q --no-cookies --no-cache https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/sheepdog.sh -O "/etc/sheep/sheepdog.sh"

echo "Calling sheepdog"

sudo bash "/etc/sheep/sheepdog.sh"