printf "\nExample 10.2: type\n==================\n"

echo "let's check the type of some programs:"

type alias
type grep
type gibberishasdf # doesn't exist
type ls
type type
type [
type if
type [[

printf "\nExample 10.2: source\n====================\n"

echo "cd.sh changes the directory to files/ and sets a variable called PANDA. First, let's run it with cd:"
bash files/cd.sh
pwd
echo $PANDA
echo "Our directory didn't change! and the \$PANDA variable doesn't exist"
echo "Let's use 'source' instead and try it again"
source files/cd.sh

pwd
echo $PANDA
echo "now we're in a different directory and \$PANDA is set"
