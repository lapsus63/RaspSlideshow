#!/bin/bash

sleep 1
echo Demarrage du Cadre Photo...
export DISPLAY=:0.0

qiv -f -R -S -n -s -r -d 5 -l -u -t -i -m /path/to/Images

# qiv -f -R -S -s -r -d 10 -l -u -t -i -m /usr/share/desktop-base/
