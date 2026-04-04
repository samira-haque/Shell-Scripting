#Example 1: Print numbers using for loop
#!/bin/bash
for i in 1 2 3 4 5
do
echo $i
done
#Example 2: Using range
#!/bin/bash
for i in {1..10}
do
echo "Number: $i"
done
#Example 3: C-style for loop
#!/bin/bash
for (( i=1; i<=5; i++ ))
do
echo $i
done
#Example 4: Loop through command line arguments
#!/bin/bash
for arg in "$@"
do
echo "Argument: $arg"
done
#Example 5: Process all text files in a directory
#!/bin/bash
for file in *.txt
do
echo "Processing $file"
done
#Example 6: Count lines of each file
#!/bin/bash
for file in *.txt
do
wc -l "$file"
done
#Example 7: Rename files using loop
#!/bin/bash
for file in *.txt
do
mv "$file" "new_$file"
done
#Example 8: Backup files
#!/bin/bash
for file in *.conf
do
cp "$file" "$file.bak"
done
#Example 9: Create multiple directories
#!/bin/bash
for i in {1..5}
do
mkdir "dir$i"
done
#Example 10: Delete empty files
#!/bin/bash
for file in *
do
if [[ -f $file && ! -s $file ]]; then
rm "$file"
fi
done
#Example 11: while loop counting
#!/bin/bash
i=1
while [[ $i -le 5 ]]
do
echo $i
((i++))
done
#Example 12: Read file line by line
#!/bin/bash
while read line
do
echo $line
done < file.txt
#Example 13: Monitor directory until file appears
#!/bin/bash
while [[ ! -f done.txt ]]
do
echo "Waiting for file..."
sleep 2
done
#Example 14: until loop example
#!/bin/bash
i=1
until [[ $i -gt 5 ]]
do
echo $i
((i++))
done
#Example 15: until file exists
#!/bin/bash
until [[ -f config.txt ]]
do
echo "config.txt not found"
sleep 2
done
#Example 16: break example
#!/bin/bash
for i in {1..10}
do
if [[ $i -eq 6 ]]
then
break
fi
echo $i
done
#Example 17: continue example
#!/bin/bash
for i in {1..10}
do
if [[ $i -eq 5 ]]
then
continue
fi
echo $i
done
#Example 18: nested loops
#!/bin/bash
for i in {1..3}
do
for j in {1..3}
do
echo "i=$i j=$j"
done
done
#Example 19: Check each file type
#!/bin/bash
for file in *
do
if [[ -f $file ]]
then
echo "$file is a regular file"
elif [[ -d $file ]]
then
echo "$file is a directory"
fi
done
#Example 20: Change permissions of scripts
#!/bin/bash
for file in *.sh
do
chmod +x "$file"
done
#Directory Traversal
#!/bin/bash
for dir in */
do
echo "Directory: $dir"
done
#Recursive Directory Traversal
#!/bin/bash
for dir in */
do
for file in "$dir"*
do
if [[ -f $file ]]
then
echo "File found: $file"
fi
done
done
#Search for a Specific File
#!/bin/bash
filename="data.txt"
for file in *
do
if [[ $file == $filename ]]
then
echo "File found: $file"
fi
done
#Search for .log Files
#!/bin/bash
for file in *.log
do
if [[ -f $file ]]
then
echo "Log file: $file"
fi
done
#Loop Through an Array
#!/bin/bash
fruits=("apple" "banana" "mango" "orange")
for fruit in "${fruits[@]}"
do
echo "Fruit: $fruit"
done
#Array with Condition
#!/bin/bash
numbers=(5 10 15 20 25)
for num in "${numbers[@]}"
do
if (( num > 15 ))
then
echo "$num is greater than 15"
fi
done
#Processing Files from an Array
#!/bin/bash
files=("file1.txt" "file2.txt" "file3.txt")
for f in "${files[@]}"
do
if [[ -f $f ]]
then
echo "$f exists"
fi
done
#Read File Line by Line with Condition
#!/bin/bash
while read line
do
if [[ -n $line ]]
then
echo "Line: $line"
fi
done < input.txt
#Copy All .txt Files to Backup Folder
#!/bin/bash
mkdir -p backup
for file in *.txt
do
if [[ -f $file ]]
then
cp "$file" backup/
fi
done
#Delete Temporary Files
#!/bin/bash
for file in *.tmp
do
if [[ -f $file ]]
then
rm "$file"
fi
done
#Duplicate File Finder
#!/bin/bash
for file1 in *
do
for file2 in *
do
if [[ "$file1" != "$file2" && -f "$file1" && -f "$file2"
]]
then
if cmp -s "$file1" "$file2"
then
echo "Duplicate files: $file1 and $file2"
fi
fi
done
done
#File Organizer Script
#!/bin/bash
mkdir -p Images Documents Scripts
for file in *
do
if [[ $file == *.jpg || $file == *.png ]]
then
mv "$file" Images/
elif [[ $file == *.txt || $file == *.pdf ]]
then
mv "$file" Documents/
elif [[ $file == *.sh ]]
then
mv "$file" Scripts/
fi
done
#Batch File Renamer
#!/bin/bash
count=1
for file in *.txt
do
newname="file_$count.txt"
mv "$file" "$newname"
((count++))
done
