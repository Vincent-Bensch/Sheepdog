#!/bin/bash
source tail

wget -O sheepit.jar https://www.sheepit-renderfarm.com/media/applet/client-latest.php
sudo java -jar sheepit.jar -ui text -compute-method GPU -gpu CUDA_0 -login "$USERNAME" -password "$PASSWORD"
sudo java -jar sheepit.jar -ui text -compute-method CPU -login "$USERNAME" -password "$PASSWORD"