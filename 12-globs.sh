# this creates some files for this example
# and cleans them up when the example is done
(
cd files
touch bear.txt bearable.txt bugbear.txt
)
trap 'rm files/*bear*.txt' EXIT

echo '
###########################################
## Example 12.1:                          #
## listing all files starting with "bear" #
###########################################
'

echo 'ls files/bear*:'
ls files/bear*
echo 'ls files/*.txt'
ls files/*.txt

echo "
##############################################
## Example 12.2:                             #
## filenames starting with a dot don't match #
##############################################
"

# all files with "bash" in your home directory
echo 'ls ~/*bash*'
ls ~/*bash* # no files with a . listed
# this will list .bashrc and .bash_profile,
# if you have them
echo 'ls ~/.bash*'
ls ~/.bash*

### TODO: add the thing about a literal *
