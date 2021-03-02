#!/bin/bash

echo " "
echo "-------------------Starting Sheepdog v12-------------------"
echo " "

echo "Removing logs"

sudo rm -f CPU_log.txt
sudo rm -f GPU_log.txt

echo "Closing old sessions"
sudo tmux -q kill-session -t GPU
sudo tmux -q kill-session -t CPU

echo "Setting login"

TAIL_USERNAME="vbensch"
TAIL_PASSWORD="2GintzUR30SrRBmzvFYxjdn9wMuI1VrmFICFz1NV"

#TAIL_USERNAME="MArL0"
#TAIL_PASSWORD="HrHBpvF8IR6bYHmXgycWLXf1zJQvrbjNGYANFeGc"

#TAIL_USERNAME="R1chard"
#TAIL_PASSWORD="YROWQgVZ3YyBrdoPoj9UL2u3XXdGwUwp7CgSvSbj"

#TAIL_USERNAME="WhatWouldKantDo"
#TAIL_PASSWORD="1WqOtJEYdJ0paXbiCKNg6neXwvqz1flSEdyo2PCh"

echo "Starting downloads"

sudo wget -q -O sheepit.jar https://www.sheepit-renderfarm.com/media/applet/client-latest.php

echo "Collected new sheepit"

sudo wget -q --no-check-certificate --content-disposition --no-cache https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/launch.sh -O launch.sh

echo "Collected new launcher"

echo " "
echo "Logging in as: $TAIL_USERNAME"
echo " "

sudo tmux new-session -d -s GPU 'java -jar sheepit.jar -ui text -compute-method GPU -gpu CUDA_0 -login $TAIL_USERNAME -password $TAIL_PASSWORD'
sudo tmux new-session -d -s CPU 'java -jar sheepit.jar -ui text -compute-method CPU -login $TAIL_USERNAME -password $TAIL_PASSWORD'

echo "Sheepdog Out"