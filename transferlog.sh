#!/bin/bash
ftp -in 216.144.243.41 << SCRIPTEND
user a92c073d Admin@aaum12
binary
cd /aaumanalytics.com/logs/W3SVC10/
lcd /home/aaum/logs/
mget *.log
tail -f  /home/aaum/logs/*.log | nc 10.7.140.21 45855
SCRIPTEND
