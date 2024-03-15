#!/bin/bash

C_PATH=/path/to/local/ssh-key
USERNM=username
SERVER=remote.host.name
S_PORT=22
R_PATH=/remote/path/to/fetch/images/from/
L_PATH=/local/path/for/Images/
L_SLIDESHOW_PATH=/path/to/slideshow.sh

# Fetch images from remote server and replace local by remote
rsync -haP -e "ssh -o StrictHostKeyChecking=no -p ${S_PORT} -i ${C_PATH}" "${USERNM}@${SERVER}:${R_PATH}" ${L_PATH} --delete

# Kill running slideshow
killall qiv

# Restart slideshow script
nohup ${L_SLIDESHOW_PATH} >/dev/null 2>&1 &

