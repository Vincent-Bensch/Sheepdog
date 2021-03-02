#!/bin/bash

echo " "
echo " "
echo "Starting Sheepdog v9.2L"
echo " "
echo " "

echo "Removing logs"

sudo rm -f CPU_log.txt
sudo rm -f GPU_log.txt

echo "Setting login"

TAIL_USERNAME="vbensch"
TAIL_PASSWORD="2GintzUR30SrRBmzvFYxjdn9wMuI1VrmFICFz1NV"

echo "Starting downloads"

sudo wget -O sheepit.jar https://www.sheepit-renderfarm.com/media/applet/client-latest.php

echo "Collected new sheepit"

sudo wget --no-check-certificate --content-disposition --no-cache https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/launch.sh -O launch.sh

echo "Collected new launcher"

echo "Logging in as: $TAIL_USERNAME"

sudo tmux new-session -d -s GPU 'java -jar sheepit.jar -ui text -compute-method GPU -gpu CUDA_0 -login "$TAIL_USERNAME" -password "$TAIL_PASSWORD"'
sudo tmux new-session -d -s CPU 'java -jar sheepit.jar -ui text -compute-method CPU -login "$TAIL_USERNAME" -password "$TAIL_PASSWORD"'

echo "Sheepdog Out"