#!/bin/bash

echo "Getting current sheepdog"

sudo wget --no-check-certificate --content-disposition --no-cache -q  https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/sheepdog.sh -O sheepdog.sh

echo "Calling sheepdog"

sudo bash sheepdog.sh