#!/bin/bash

source "/etc/sheep/hydrant.sh"

sudo java -jar "/etc/sheep/sheepit.jar" -ui text -compute-method GPU -gpu CUDA_0 -memory $CPU_MEMORY -cores $CPU_CORES -priority $CPU_PRIORITY -login "$CPU_USERNAME" -password "$CPU_PASSWORD"