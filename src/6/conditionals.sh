#!bin/bash

# Conditionals
if [ "foo" = "foo" ]; then
	echo expression evaluated as true
else
	echo expression evaluated as false
fi

# Now using variables
T1="foo"
T2="bar"
if [ "$T1" = "$T2" ]; then
	echo expression evaluated as true
else
	echo expression evaluated as false
fi

# ps: The spaces inside the condition statement is important