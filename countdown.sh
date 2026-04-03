#!/bin/bash

read -p "Enter starting Time" count

for ((i=count;i>=0; i--))
do
echo "$i"
sleep 1
done
