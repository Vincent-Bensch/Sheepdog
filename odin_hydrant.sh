#!/bin/bash

source "/etc/sheep/watermains.sh"

#A - vbensch
#B - MArL0
#C - R1chard
#D - WhatWouldKantDo
#E - R0meo
#F - B1golo

A_SWITCH=false
A_USERNAME="$A_USERNAME"
A_PASSWORD="$A_PASSWORD"
A_MEMORY=4000000000
A_CORES=1
A_PRIORITY=15
A_COMPUTE="$GPU_COMMAND"
A_HOSTNAME="Odin_A"
A_TIME=60

B_SWITCH=false
B_USERNAME="$E_USERNAME"
B_PASSWORD="$E_PASSWORD"
B_MEMORY=4000000000
B_CORES=3
B_PRIORITY=15
B_COMPUTE="$CPU_COMMAND"
B_HOSTNAME="Odin_B"
B_TIME=60

C_SWITCH=false
C_USERNAME="$F_USERNAME"
C_PASSWORD="$F_PASSWORD"
C_MEMORY=4000000000
C_CORES=3
C_PRIORITY=15
C_COMPUTE="$CPU_COMMAND"
C_HOSTNAME="Odin_C"
C_TIME=60

D_SWITCH=true
D_USERNAME="$A_USERNAME"
D_PASSWORD="$A_PASSWORD"
D_MEMORY=6000000000
D_CORES=6
D_PRIORITY=14
D_COMPUTE="$CPU_COMMAND"
D_HOSTNAME="Odin_D"
D_TIME=180

E_SWITCH=true
E_USERNAME="$A_USERNAME"
E_PASSWORD="$A_PASSWORD"
E_MEMORY=6000000000
E_CORES=1
E_PRIORITY=14
E_COMPUTE="$GPU_COMMAND"
E_HOSTNAME="Odin_E"
E_TIME=180

F_SWITCH=false
F_USERNAME="$E_USERNAME"
F_PASSWORD="$E_PASSWORD"
F_MEMORY=6000000000
F_CORES=6
F_PRIORITY=15
F_COMPUTE="$CPU_COMMAND"
F_HOSTNAME="Odin_F"
F_TIME=-1

G_SWITCH=false
G_USERNAME="$E_USERNAME"
G_PASSWORD="$E_PASSWORD"
G_MEMORY=6000000000
G_CORES=6
G_PRIORITY=15
G_COMPUTE="$CPU_COMMAND"
G_HOSTNAME="Odin_G"
G_TIME=-1

H_SWITCH=false
H_USERNAME="$E_USERNAME"
H_PASSWORD="$E_PASSWORD"
H_MEMORY=6000000000
H_CORES=6
H_PRIORITY=15
H_COMPUTE="$CPU_COMMAND"
H_HOSTNAME="Odin_H"
H_TIME=-1