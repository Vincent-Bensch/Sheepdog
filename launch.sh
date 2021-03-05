#!/bin/bash

echo " "
echo "-------------------Starting Launcher v20-------------------"
echo " "

if [ $# -eq 0 ]
then
  PATH = "."
else
  PATH = "$1"
fi

echo "Getting current sheepdog"

sudo wget -q --no-check-certificate --content-disposition --no-cache  https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/sheepdog.sh -O "$PATH/sheepdog.sh"

echo "Calling sheepdog"

sudo bash "$PATH/sheepdog.sh" "$PATH"