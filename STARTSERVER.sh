#!/bin/bash
echo "FILE SERVER IS STARTING PLEASE WAIT"
echo "-----------------------------------------------"
screen -S FILESERVER rails s -p 3050 -b 192.168.0.100


