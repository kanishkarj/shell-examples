#!/bin/bash

echo '
################################################
## Example 8.1:                                #
## how to print  out all environment variables #
################################################
'

# the first way is `env`
env | tail # I piped this to tail just because there are a LOT
# here's another way to get environment variables that only works on linux:
cat /proc/self/environ | tr '\0' '\n' | tail

echo '
#######################################
## Example 8.2:                       #
## printing out environment variables #
## and shell variables                #
#######################################
'
# we access them both the same way: $varname
x="i'm a variable"
echo "$x"
echo "$HOME" # $HOME is an environment variable

echo '
########################################
## Example 8.3:                        #
## child processes inherit environment #
## variables (but not shell variables) #
########################################
'

# child processes inherit environment variables

export ENVVAR='panda'
bash -c 'echo ENVVAR is: $ENVVAR' # this prints out 'panda'

# but not regular shell variables

SHELLVAR='baby seal'

bash -c 'echo SHELLVAR is: $SHELLVAR' # this doesn't print out anything

echo '
#######################################
## Example 8.4:                       #
## how to set an environment variable #
## for a child process with env       #
#######################################
'

env ANIMAL=porcupine bash -c 'echo in this child process, ANIMAL=$ANIMAL'
# ANIMAL doesn't get set in the main process
echo "but in the main process, ANIMAL=$ANIMAL"

# it also works without the 'env'

ANIMAL='banana slug' bash -c 'echo in the second child process, ANIMAL=$ANIMAL'
echo "in the main process, we still have ANIMAL=$ANIMAL"
