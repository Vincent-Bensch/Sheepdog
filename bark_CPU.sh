#!/bin/bash

if [ $# -eq 0 ]
then
  PATH = "."
else
  PATH = "$1"
fi

source "$PATH/hydrant.sh"

sudo java -jar "$PATH/sheepit.jar" -ui text -compute-method CPU -memory 6000000000 -cores 6 -priority 15 -login "$TAIL_USERNAME" -password "$TAIL_PASSWORD"