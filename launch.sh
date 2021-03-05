#!/bin/bash

echo " "
echo "-------------------Starting Launcher v19-------------------"
echo " "

full_path=$(realpath $0)
dir_path=$(dirname $full_path)

echo "Getting current sheepdog"

sudo wget -q --no-check-certificate --content-disposition --no-cache  https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/sheepdog.sh -O "$dirpath/sheepdog.sh"

echo "Calling sheepdog"

sudo bash "$dirpath/sheepdog.sh"