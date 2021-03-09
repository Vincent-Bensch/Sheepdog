#!/bin/bash

source "/etc/sheep/hydrant.sh"

sudo java -jar "/etc/sheep/sheepit.jar" -ui text -compute-method GPU -gpu CUDA_0 -memory $APU_MEMORY -cores $APU_CORES -priority $APU_PRIORITY -login "$APU_USERNAME" -password "$APU_PASSWORD"