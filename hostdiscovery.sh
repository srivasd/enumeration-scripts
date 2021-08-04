#!/bin/bash

subnet=X.X.X.
addr=1
while [ $addr -lt 256 ]; do
echo "Trying with " $subnet$addr
ping -c 1 -t 1 $subnet$addr > /dev/null && echo "Found: " $subnet$addr " active!"
addr=$((addr+1))
done
