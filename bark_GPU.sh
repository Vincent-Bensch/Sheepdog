#!/bin/bash

PATH = "/etc/sheep"

source "$PATH/hydrant.sh"

sudo java -jar "$PATH/sheepit.jar" -ui text -compute-method GPU -gpu CUDA_0 -memory 6000000000 -cores 1 -priority 15 -login "$TAIL_USERNAME" -password "$TAIL_PASSWORD"