#! /bin/bash

clear

echo "starting word count now"

# Hopefully this will ask for a directory name
echo "enter file location"

read location

# learn the magic voodoo of uniq

tr -c '[:alpha:]' '[\n*]' < $location |
fgrep -v -f /usr/share/groff/current/eign |
sort | uniq -c | sort -nr | head  -250

~
~
~