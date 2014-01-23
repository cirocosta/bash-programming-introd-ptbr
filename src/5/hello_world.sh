#!bin/bash
STR="Hello World!"
echo $STR

# $ Accesses the value of that variable 
echo ls
echo $(ls)

#Local Variables
HELLO=Hello
function hello {
	local HELLO=World
	echo $HELLO
}
echo $HELLO
hello
echo $HELLO