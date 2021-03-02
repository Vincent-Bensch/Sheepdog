#!/bin/bash
source tail

echo "Starting Sheepdog v7"

sudo rm -f sheepit.jar
sudo rm -f launch.sh

TAIL_USERNAME="vbensch"
TAIL_PASSWORD="2GintzUR30SrRBmzvFYxjdn9wMuI1VrmFICFz1NV"

sudo wget -O sheepit.jar https://www.sheepit-renderfarm.com/media/applet/client-latest.php
sudo wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/launch.sh

echo "Logging in as: $TAIL_USERNAME"

sudo java -jar sheepit.jar -ui text -compute-method GPU -gpu CUDA_0 -login "$TAIL_USERNAME" -password "$TAIL_PASSWORD"
sudo java -jar sheepit.jar -ui text -compute-method CPU -login "$TAIL_USERNAME" -password "$TAIL_PASSWORD"

echo "Sheepdog Out"