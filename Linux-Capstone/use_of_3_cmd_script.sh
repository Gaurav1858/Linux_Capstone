#!/bin/bash

echo "Please enter the name of the file you want to process:"
read filename
echo "Content of the file:"
cat $filename
echo "" 

echo "Give Pattern to search(using grep command): "
read pattern
grep -i "$pattern" $filename
echo "Pattern Found"
echo "" 

echo "Want to Continue? [Y/N]"
read answer
if [[ "$answer" == "Y" || "$answer" == "y" ]]
then
  # Using awk to print the first column of the file
  echo "First column of the file(using awk command):"
  awk '{print $1}' $filename
else
  echo "Script Aborted by user."
fi
echo ""

echo "Replacing all occurrences of the old word with the new word in a file using sed command"
echo "enter filename: "
read filename
input_file="$filename"

read -p "Enter the word to replace: " old_word

read -p "Enter the replacement word: " new_word

sed -i "s/$old_word/$new_word/g" "$input_file"

echo "Replaced '$old_word' with '$new_word' in '$input_file'"
echo ""

echo "Modified file contents:"
cat "$input_file"


