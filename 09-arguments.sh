#!/bin/bash
# try running this script with some command line arguments
# like `bash 9-argument.sh panda swan banana`

echo '$1 is' $1
echo '$2 is' $2
echo '$3 is' $3

echo 'printing out all the arguments now:'

for i in $@
do
    echo $i
done

