#!/bin/bash
echo "FILE SERVER IS STARTING PLEASE WAIT"
echo "-----------------------------------------------"
screen -dmS FILESERVER bash -c "cd /home/server/SERVERS/file-server-code/ && rails s -p 3050 -b 192.168.0.100"

