#!/bin/bash

read -p "Enter your age: " age
echo "user is $age years old and his/her name is $1"

if ((age < 17)); then
echo "You are too young, not eligible"
elif [[ $age -ge 17 && $age -le 47 ]]; then
echo " Eligible"
if [[ $1 == A* ]]; then
echo "Congratulations, make sure to thank your parents"
fi
else
echo "Too old,not eligible"
fi


for number in {1..5}
do
for letter in {a..e}
do 
echo "$number+$letter"
done
done


count=0

while [[ $count -lt 5 ]]
do
echo "Count: $count"
count=$((count + 1))
done




read -p "Starting time" count
for ((i=count; i>=0;i--))
do 
echo "$i"
sleep 1
done
