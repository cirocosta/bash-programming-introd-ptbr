#!/bin/bash

# 1 -- stdout
# 2 -- stderr

# stdout --> file
ls -l > ls-l.txt

# stderr --> file
grep da * 2 > grep-errors.txt

# stdout --> stderr
grep da * 1 > &2

# stderr > stdout
grep * 2 > &1

# stderr and stdout --> file
# 	will place every output of a program to a file 
# The script per se will delete every file called 'core' in any
# directory.
rm -f $(find / -name core) &> /dev/null
