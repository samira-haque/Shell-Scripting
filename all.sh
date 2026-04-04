#!/bin/bash

#for loop
for i in 1 2 3 4 5
do
echo "Number: $i"
done

#while loop
count=1
while [ $count -le 5 ]
do
echo "Count: $count"
count=$((count + 1))
done

#until loop
count=5
until [ $count -lt 1 ]
do
echo "Countdown: $count"
count=$((count - 1))
done

#while:
count=0
while [ $count -lt 5 ]
do
echo "Count: $count"
count=$((count + 1))
done
# until:
count=5
until [ $count -eq 0 ]; do
echo "Count: $count"
count=$((count - 1))
done

#nested loop
for i in 1 2 3
do
for j in a b c
do
echo "$i and $j"
done
done

#break
for i in {1..10}
do
if [[ $i -eq 5 ]]
then
break
fi
done

#continue
for i in {1..5}
do
if [[ $i -eq 3 ]]
then
continue
fi
echo $i
done
