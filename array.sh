#!/bin/bash

fruits=("mango" "banana" "orrange")
echo "${fruits[@]}"
fruits[2]="Lichi"
echo "${fruits[@]}"

#sum of all numbers in an array
numbers=(1 2 3 4 5)
sum=0
for num in "${numbers[@]}"
do
sum=$((sum+num))
done
echo $sum

#multitype array

multi=("Banana" 20 "Khulna" 2.2)
result=$(echo "${multi[1]} + ${multi[3]}" | bc)
echo "$result"
