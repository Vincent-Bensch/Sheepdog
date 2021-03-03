#!/bin/bash

source hydrant.sh

sudo java -jar sheepit.jar -ui text -compute-method GPU -gpu CUDA_0 -memory 6000000 -cores 1 -priority 15 -login "$TAIL_USERNAME" -password "$TAIL_PASSWORD"