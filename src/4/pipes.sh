#!bin/bash

# sed (stream editor) isn't an interactive text editor. Instead, it is 
# used to filter text, i.e., it takes text input, performs some 
# operation (or set of operations) on it, and outputs the modified text.
# Sed is typically used for extracting part of a file using pattern 
# matching or substituting multiple occurrences of a string within a 
# file.


# First the command ls -l is executed, and it's output, instead of 
# being printed, is sent (piped) to the sed program, which in turn, 
# prints what it has to.
ls -l | sed -e "s/[aeio]/u/g"


# Now this will list what's in the dir and, for that list, print those
# files that matches the grep
ls -l | grep "\.txt$"