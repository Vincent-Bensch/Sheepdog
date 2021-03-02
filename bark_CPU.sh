#!/bin/bash

source hydrant.sh

sudo java -jar sheepit.jar -ui text -compute-method CPU -login "$TAIL_USERNAME" -password "$TAIL_PASSWORD"