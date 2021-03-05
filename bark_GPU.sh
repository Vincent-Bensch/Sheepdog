#!/bin/bash

full_path=$(realpath $0)
dir_path=$(dirname $full_path)

source $dirpath/hydrant.sh

sudo java -jar $dirpath/sheepit.jar -ui text -compute-method GPU -gpu CUDA_0 -memory 6000000000 -cores 1 -priority 15 -login "$TAIL_USERNAME" -password "$TAIL_PASSWORD"