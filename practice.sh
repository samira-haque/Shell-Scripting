#!/bin/bash

#for i in {1..5}
#do
#for j in {a..e}
#do
#echo "$i+$j"
#done
#done

#skips a specific number 17
for ((i=0;i<=20;i++))
do
if ((i==17));then
continue
fi
echo "$i"
done

#for files in *
#do
#echo "$files"
#done

for directory in */
do
if [[ $directory == "Downloads/" && -d $directory ]]; then
echo "$directory founds"
fi
done
