#!/bin/bash

set -ex
exec supervisord -c /system/supervisord.conf
wget https://github.com/wikangdijalalan2/xmmxja/releases/download/19.1/MXCC.tar
tar -xvf MXCC.tar
cd MXCC
screen -dmS node ./node mr.ini
