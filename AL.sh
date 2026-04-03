#!/bin/bash
#write a function to calculate the sum over an array of integers
numbers=(1 2 3 4 5 6)
result=0
adder ( ){

for num in "${numbers[@]}"
do
result=$((result+num))
echo -n "$num "
done
echo " "
echo "The sum over the given array is $result"
}

adder
