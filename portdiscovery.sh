#!/bin/bash

ip=X.X.X.X
port=1
while [ $port -lt 1000 ]; do
# echo "Trying with port" $port "for the ip" $ip
timeout 1 bash -c "echo '' > /dev/tcp/$ip/$port" > /dev/null 2>&1 && echo "Found: " $port " open!"
port=$((port+1))
done
