#!/bin/bash
source tail

sudo rm -f sheepit.jar
sudo rm -f launch.sh

echo "---------------READING--------------------------"

echo $TAIL_USERNAME
echo $TAIL_PASSWORD

wget -O sheepit.jar https://www.sheepit-renderfarm.com/media/applet/client-latest.php
wget -O sheepdog.sh https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/sheepdog.sh

echo "Logging in with username: $TAIL_USERNAME"
echo "Logging in with password: $TAIL_PASSWORD"

sudo java -jar sheepit.jar -ui text -compute-method GPU -gpu CUDA_0 -login "$TAIL_USERNAME" -password "$TAIL_PASSWORD"
sudo java -jar sheepit.jar -ui text -compute-method CPU -login "$TAIL_USERNAME" -password "$TAIL_PASSWORD"

echo "Sheepdog Out"