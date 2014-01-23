#!bin/bash

# Just write a function as of function my_func { my code }.
# Note that we are using Positional Parameters here, which
# its value are accessed using $position. These variables are
# reserved by the shell.

function quit {
   exit
}  
function e {
    echo $1 
}  
e Hello
e World
quit
echo foo 



# Table 1: Built-in shell variables.

# Variable	Use
# $#	Stores the number of command-line arguments that were passed to
# 			the shell program.
# $?	Stores the exit value of the last command that was executed.
# $0	Stores the first word of the entered command (the name of the 
#			shell program).
# $*	Stores all the arguments that were entered on the command line
#			($1 $2 ...).
# "$@"	Stores all the arguments that were entered on the command line, 
#			individually quoted ("$1" "$2" ...).
# source: http://linuxsig.org/files/bash_scripting.html