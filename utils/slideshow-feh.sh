#!/bin/bash

sleep 1
echo Demarrage du Cadre Photo...
export DISPLAY=:0.0

feh -Y -x -q -D 5 -B black -F -Z -z -r /path/to/images/
