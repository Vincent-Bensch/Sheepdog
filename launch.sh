#!/bin/bash

sudo rm -f sheepdog.sh
sudo rm -f tail

wget -O sheepdog.sh https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/sheepdog.sh
wget -O tail https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/tail

sudo bash sheepdog.sh