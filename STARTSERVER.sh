#!/bin/bash
#echo "FILE SERVER IS STARTING PLEASE WAIT"
#echo "-----------------------------------------------"
#screen -dmS FILESERVER bash -c "cd /home/server/ALL\ SERVER\ CODES/file-server-code/ && rails s -p 3050 -b 192.168.0.100"

#!/bin/bash

echo "FILE SERVER IS STARTING PLEASE WAIT"
echo "-----------------------------------------------"

nohup rails s -p 3050 -b 192.168.0.100 > server.log 2>&1 &
