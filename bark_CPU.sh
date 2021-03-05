#!/bin/bash

source ../hydrant.sh

sudo java -jar ../sheepit.jar -ui text -compute-method CPU -memory 6000000000 -cores 6 -priority 15 -login "$TAIL_USERNAME" -password "$TAIL_PASSWORD"