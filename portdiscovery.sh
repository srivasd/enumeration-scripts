#!/bin/bash

ip=X.X.X.X
port=1
while [ $port -lt 1000 ]; do
echo "Trying with port" $port "for the ip" $ip
timeout 1 bash -c "echo '' > /dev/tcp/$ip/$port" && echo "Found: " $port " open!"
port=$((port+1))
done
