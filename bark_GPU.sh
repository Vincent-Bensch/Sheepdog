#!/bin/bash

if [ $# -eq 0 ]
then
  PATH = "."
else
  PATH = "$1"
fi

source "$PATH/hydrant.sh"

sudo java -jar "$PATH/sheepit.jar" -ui text -compute-method GPU -gpu CUDA_0 -memory 6000000000 -cores 1 -priority 15 -login "$TAIL_USERNAME" -password "$TAIL_PASSWORD"