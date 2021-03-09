#!/bin/bash

source "/etc/sheep/hydrant.sh"

sudo java -jar "/etc/sheep/sheepit.jar" -ui text -compute-method GPU -gpu CUDA_0 -memory $GPU_MEMORY -cores $GPU_CORES -priority $GPU_PRIORITY -login "$GPU_USERNAME" -password "$GPU_PASSWORD"