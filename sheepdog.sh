#!/bin/bash

echo "/n/n Starting Sheepdog v7.2 /n/n"

TAIL_USERNAME="vbensch"
TAIL_PASSWORD="2GintzUR30SrRBmzvFYxjdn9wMuI1VrmFICFz1NV"

sudo wget -q -O sheepit.jar https://www.sheepit-renderfarm.com/media/applet/client-latest.php
sudo wget --no-check-certificate --content-disposition --no-cache -q https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/launch.sh -O launch.sh

echo "Logging in as: $TAIL_USERNAME"

sudo java -jar sheepit.jar -ui text -compute-method GPU -gpu CUDA_0 -login "$TAIL_USERNAME" -password "$TAIL_PASSWORD"
sudo java -jar sheepit.jar -ui text -compute-method CPU -login "$TAIL_USERNAME" -password "$TAIL_PASSWORD"

echo "Sheepdog Out"