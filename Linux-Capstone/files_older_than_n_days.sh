#!/bin/bash
echo "Enter the number of days: "
read day

echo "This script will list all files in the filesystem that are older than $day days."
echo "Are you sure you want to continue? [Y/N]: "
read answer

if [[ "$answer" == "Y" || "$answer" == "y" ]]
then
  echo "Searching for files older than $day days..."
  find . -maxdepth 3 -type f -mtime +"$day" -print
else
  echo "Script ended."
fi

