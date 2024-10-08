#!/bin/bash

disk=`df -h | awk '{print$5}' | sed -n 5p | sed 's/%//g'`
memory=`free -h |
ip=`curl ifconfig.me`

if [ $disk -gt 80 ]; then
    echo -e "!!!The disk usage has crossed 80% on the server $ip \n system memory is"| mail -s "Disk Full" sushmithamodukuri@gmail.com
