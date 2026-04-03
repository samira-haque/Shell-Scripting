#!/bin/bash

for item in *
do
if [[ -f $item ]];then
echo "$item:file"
elif [[ -d $item ]];then
echo "$item:directory"
fi
done
