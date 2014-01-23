#!bin/bash

# FOR: iterate over a series of 'words' within a string
# WHILE: executes code while true and stops when false or an explicit
#	break is found
# UNTIL: just like while, but executes while false

# Iterates over the values from ls
for i in $(ls); do
	echo item: $i
done

# It is also valid a c-like way of iterating over the for
for i in `seq 1 10`;
do
	echo $i
done

# let being used for updating a variable
# -lt  -- less than
# -gt  -- greater than 
COUNTER=0
while [ $COUNTER -lt 10 ]; do
	echo The counter is $COUNTER
	let COUNTER+=1
done

let COUNTER=20
until [ $COUNTER -lt 10 ]; do
	echo COUNTER $COUNTER
	let COUNTER-=1
done