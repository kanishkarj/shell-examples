#!/bin/bash

printf "Example 8.1\n===========\n"

echo; echo "let's print out some of your shell's environment variables"
env | tail # piping to tail just because there are a LOT

echo; echo "here's another way to get all environment variables that only works on Linux:"
cat /proc/self/environ | tr '\0' '\n' | tail

printf "\nExample 8.2\n===========\n"

printf '\nboth shell variables and environment variables are accessed with $varname \n'
# comment

x="i'm a variable"
echo "$x"
echo "$HOME" # $HOME is an environment variable

printf "\nExample 8.3\n===========\n"

echo 'child processes inherit environment variables'

export ENVVAR='panda'
bash -c 'echo $ENVVAR' # this prints out 'panda'

echo 'but not regular shell variables'

OTHERVAR='baby seal'

bash -c 'echo $OTHERVAR' # this doesn't print out anything

printf "\nExample 8.4\n===========\n"

echo "setting an environment variable just for a child process"

env ANIMAL=porcupine bash -c 'echo I have this variable: $ANIMAL'
echo "the ANIMAL variable isn't set in our main shell: $ANIMAL"

printf "\nit also works without the 'env'\n"

ANIMAL='banana slug' bash -c 'echo I have this variable: $ANIMAL'
echo "the ANIMAL variable still isn't set in our main shell: $ANIMAL"
