#!/bin/sh
# Shell script to find graphics not used in module documentation
# Example use in root of course repo (or module folder for lab images)
# cf.sh module-01 
# will output used files to command line.
files=$(ls -1 images/$1)
echo Looking for unused images in images/$1
echo "                             ******************"
for output in $(ls -1 images/$1)
do 
    if ! grep -q $output index.html
        then echo $output
    fi
done
