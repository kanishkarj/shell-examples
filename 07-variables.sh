#!/bin/bash
printf "Example 7.1\n===========\n"
echo "here's how to set a variable:"
x='hello there'
echo $x

printf "\nand here's what happens when you put spaces around the =:\n"
x = 'hello there' # this causes an error

printf "\nExample 7.2\n===========\n"
echo "you don't always need to put quotes around strings:"

x=banana

echo "but you do need quotes if there's a space"

x=hello there

printf "\nExample 7.3\n===========\n"
echo "here's what happens if you don't put quotes around a filename with spaces:"

filename="files/filename with spaces"
cat $filename

printf "\nit works with quotes:\n"
cat "$filename"

printf "\nExample 7.4\n===========\n"
echo 'how to use ${var} to concatenate a variable with a string:'
x=panda
echo "${x}bear"

echo "this doesn't work: there's no variable called 'xbear'"
echo "$xbear"
