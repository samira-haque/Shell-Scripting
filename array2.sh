#!/bin/bash
# Declare an array with elements
fruits=("apple" "banana" "cherry")
# Or declare an empty array and then add elements
fruits=()
fruits[0]="apple"
fruits[1]="banana"
fruits[2]="cherry"

# Access elements using index
echo ${fruits[0]} # Output: apple
echo ${fruits[1]} # Output: banana

# Declare an array with elements
fruits=("apple" "banana" "cherry")
# Or declare an empty array and then add elements
fruits=()
fruits[0]="apple"
fruits[1]="banana"
fruits[2]="cherry"

# Access elements using index
echo ${fruits[0]} # Output: apple
echo ${fruits[1]} # Output: banana


# Access all elements
echo ${fruits[@]} # Output: apple banana cherry

# Loop through array elements
for fruit in "${fruits[@]}"; do
echo "I like $fruit"
done

# Remove an element from the array
unset fruits[1] # Removes 'banana'
# Display remaining elements
echo ${fruits[@]} 

#!/bin/bash
# Define an array of numbers
numbers=(5 10 15 20 25)
# Sum the numbers in the array
sum=0
for num in "${numbers[@]}"; do
sum=$(( sum + num ))
done
echo "Sum of numbers: $sum"

#!/bin/bash
# Declare an array with a mix of strings and numbers
mixed_array=("apple" 42 "banana" 3.14 "cherry")
# Example with bc for floating-point math
result=$(echo "${mixed_array[3]} + 2" | bc)
echo "3.14 + 2 = $result"

#Array With File Names
files=("file1.txt" "file2.txt" "file3.txt")
for f in "${files[@]}"
do
if [[ -f $f ]]
then
echo "$f exists"
fi
done
