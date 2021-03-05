#!/bin/bash

source "/etc/sheep/hydrant.sh"

sudo java -jar "/etc/sheep/sheepit.jar" -ui text -compute-method CPU -memory 6000000000 -cores 6 -priority 15 -login "$TAIL_USERNAME" -password "$TAIL_PASSWORD"