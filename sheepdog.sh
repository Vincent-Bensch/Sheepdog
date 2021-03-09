#!/bin/bash

echo " "
echo "-------------------Starting Sheepdog v22-------------------"
echo " "

echo "Cycling TEMP_DIR"
sudo rm -r -f /etc/sheep/TEMP
sudo mkdir /etc/sheep/TEMP

echo "Closing old sessions"
sudo tmux -q kill-session -t Sheepit_A


echo "Starting downloads"
sudo wget -q -O "/etc/sheep/sheepit.jar" https://www.sheepit-renderfarm.com/media/applet/client-latest.php

echo "Collected new sheepit"
sudo wget -q --no-cookies --no-cache https://raw.githubusercontent.com/Vincent-Bensch/Sheepdog/master/watermains.sh -O "/etc/sheep/watermains.sh"

echo "Refreshed command files"
source "/etc/sheep/hydrant.sh"

if [ "$A_SWITCH" = true ] ; then
    echo "Starting Sheepit A"
    sudo tmux new-session -d -s Sheepit_A "java -jar /etc/sheep/sheepit.jar -ui text $A_COMPUTE -memory $A_MEMORY -cores $A_CORES -priority $A_PRIORITY -login $A_USERNAME -password $A_PASSWORD -hostname $A_HOSTNAME -rendertime $A_TIME -shared-zip /etc/sheep/TEMP"
fi

if [ "$B_SWITCH" = true ] ; then
    echo "Starting Sheepit B"
    sudo tmux new-session -d -s Sheepit_B "java -jar /etc/sheep/sheepit.jar \
	-ui text \
    $B_COMPUTE \
	-memory $B_MEMORY \
	-cores $B_CORES \
	-priority $B_PRIORITY \
	-login $B_USERNAME \
	-password $B_PASSWORD \
	-hostname $B_HOSTNAME \
	-rendertime $B_TIME \
	-shared-zip /etc/sheep/TEMP"
fi

if [ "$C_SWITCH" = true ] ; then
    echo "Starting Sheepit C"
    sudo tmux new-session -d -s Sheepit_C "java -jar /etc/sheep/sheepit.jar \
	-ui text \
    $C_COMPUTE \
	-memory $C_MEMORY \
	-cores $C_CORES \
	-priority $C_PRIORITY \
	-login $C_USERNAME \
	-password $C_PASSWORD \
	-hostname $C_HOSTNAME \
	-rendertime $C_TIME \
	-shared-zip /etc/sheep/TEMP"
fi

if [ "$D_SWITCH" = true ] ; then
    echo "Starting Sheepit D"
    sudo tmux new-session -d -s Sheepit_D "java -jar /etc/sheep/sheepit.jar \
	-ui text \
    $D_COMPUTE \
	-memory $D_MEMORY \
	-cores $D_CORES \
	-priority $D_PRIORITY \
	-login $D_USERNAME \
	-password $D_PASSWORD \
	-hostname $D_HOSTNAME \
	-rendertime $D_TIME \
	-shared-zip /etc/sheep/TEMP"
fi

if [ "$E_SWITCH" = true ] ; then
    echo "Starting Sheepit E"
    sudo tmux new-session -d -s Sheepit_E "java -jar /etc/sheep/sheepit.jar \
	-ui text \
    $E_COMPUTE \
	-memory $E_MEMORY \
	-cores $E_CORES \
	-priority $E_PRIORITY \
	-login $E_USERNAME \
	-password $E_PASSWORD \
	-hostname $E_HOSTNAME \
	-rendertime $E_TIME \
	-shared-zip /etc/sheep/TEMP" 
fi

if [ "$F_SWITCH" = true ] ; then
    echo "Starting Sheepit F"
    sudo tmux new-session -d -s Sheepit_F "java -jar /etc/sheep/sheepit.jar \
	-ui text \
    $F_COMPUTE \
	-memory $F_MEMORY \
	-cores $F_CORES \
	-priority $F_PRIORITY \
	-login $F_USERNAME \
	-password $F_PASSWORD \ 
	-hostname $F_HOSTNAME \
	-rendertime $F_TIME \
	-shared-zip /etc/sheep/TEMP"
fi

if [ "$G_SWITCH" = true ] ; then
    echo "Starting Sheepit G"
    sudo tmux new-session -d -s Sheepit_G "java -jar /etc/sheep/sheepit.jar \
	-ui text \
    $G_COMPUTE \
	-memory $G_MEMORY \
	-cores $G_CORES \
	-priority $G_PRIORITY \
	-login $G_USERNAME \
	-password $G_PASSWORD \
	-hostname $G_HOSTNAME \
	-rendertime $G_TIME \
	-shared-zip /etc/sheep/TEMP"
fi

if [ "$H_SWITCH" = true ] ; then
    echo "Starting Sheepit H"
    sudo tmux new-session -d -s Sheepit_H "java -jar /etc/sheep/sheepit.jar \
	-ui text \
    $H_COMPUTE \
	-memory $H_MEMORY \
	-cores $H_CORES \
	-priority $H_PRIORITY \
	-login $H_USERNAME \
	-password $H_PASSWORD \
	-hostname $H_HOSTNAME \
	-rendertime $H_TIME \
	-shared-zip /etc/sheep/TEMP"
fi

echo "Sheepdog Out"
echo " "