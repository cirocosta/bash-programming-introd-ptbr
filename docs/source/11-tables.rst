Tabelas
========
11.1 String comparison operators
------------------------------------
(1) s1 = s2

(2) s1 != s2

(3) s1 < s2

(4) s1 > s2

(5) -n s1

(6) -z s1

(1) s1 matches s2

(2) s1 does not match s2

(3) __TO-DO__

(4) __TO-DO__

(5) s1 is not null (contains one or more characters)

(6) s1 is null

11.2 String comparison examples
--------------------------------
Comparing two strings.

         #!/bin/bash
        S1='string'
        S2='String'
        if [ $S1=$S2 ];
        then
                echo "S1('$S1') is not equal to S2('$S2')"
        fi
        if [ $S1=$S1 ];
        then
                echo "S1('$S1') is equal to S1('$S1')"
        fi
        
I quote here a note from a mail, sent buy Andreas Beck, refering to use if [ $1 = $2 ].

This is not quite a good idea, as if either $S1 or $S2 is empty, you will get a parse error. x$1=x$2 or "$1"="$2" is better.

11.3 Arithmetic operators
----------------------------
+

-

*

/

% (remainder)

11.4 Arithmetic relational operators
----------------------------------------
-lt (<)

-gt (>)

-le (<=)

-ge (>=)

-eq (==)

-ne (!=)

C programmer's should simple map the operator to its corresponding parenthesis.

11.5 Useful commands
------------------------
This section was re-written by Kees (see thank to...)

Some of these command's almost contain complete programming languages. From those commands only the basics will be explained. For a more detailed description, have a closer look at the man pages of each command.

sed (stream editor)

Sed is a non-interactive editor. Instead of altering a file by moving the cursor on the screen, you use a script of editing instructions to sed, plus the name of the file to edit. You can also describe sed as a filter. Let's have a look at some examples:

         $sed 's/to_be_replaced/replaced/g' /tmp/dummy
        
Sed replaces the string 'to_be_replaced' with the string 'replaced' and reads from the /tmp/dummy file. The result will be sent to stdout (normally the console) but you can also add '> capture' to the end of the line above so that sed sends the output to the file 'capture'.

         $sed 12, 18d /tmp/dummy
        
Sed shows all lines except lines 12 to 18. The original file is not altered by this command.

awk (manipulation of datafiles, text retrieval and processing)

Many implementations of the AWK programming language exist (most known interpreters are GNU's gawk and 'new awk' mawk.) The principle is simple: AWK scans for a pattern, and for every matching pattern a action will be performed.

Again, I've created a dummy file containing the following lines:

"test123

test

tteesstt"

         $awk '/test/ {print}' /tmp/dummy
        
test123

test

The pattern AWK looks for is 'test' and the action it performs when it found a line in the file /tmp/dummy with the string 'test' is 'print'.

         $awk '/test/ {i=i+1} END {print i}' /tmp/dummy
        
3

When you're searching for many patterns, you should replace the text between the quotes with '-f file.awk' so you can put all patterns and actions in 'file.awk'.

grep (print lines matching a search pattern)

We've already seen quite a few grep commands in the previous chapters, that display the lines matching a pattern. But grep can do more.

         $grep "look for this" /var/log/messages -c
        
12

The string "look for this" has been found 12 times in the file /var/log/messages.

[ok, this example was a fake, the /var/log/messages was tweaked :-)]

wc (counts lines, words and bytes)

In the following example, we see that the output is not what we expected. The dummy file, as used in this example, contains the following text: "bash introduction howto test file"

         $wc --words --lines --bytes /tmp/dummy
        
2 5 34 /tmp/dummy

Wc doesn't care about the parameter order. Wc always prints them in a standard order, which is, as you can see: .

sort (sort lines of text files)

This time the dummy file contains the following text:

"b

c

a"

         $sort /tmp/dummy
        
This is what the output looks like:

a

b

c

Commands shouldn't be that easy :-) bc (a calculator programming language)

Bc is accepting calculations from command line (input from file. not from redirector or pipe), but also from a user interface. The following demonstration shows some of the commands. Note that

I start bc using the -q parameter to avoid a welcome message.

    $bc -q
        
1 == 5

0

0.05 == 0.05

1

5 != 5

0

2 ^ 8

256

sqrt(9)

3

while (i != 9) {

i = i + 1;

print i

}

123456789

quit

tput (initialize a terminal or query terminfo database)

A little demonstration of tput's capabilities:

         $tput cup 10 4
        
The prompt appears at (y10,x4).

         $tput reset
        
Clears screen and prompt appears at (y1,x1). Note that (y0,x0) is the upper left corner.

         $tput cols
        
80
Shows the number of characters possible in x direction.

It it higly recommended to be familiarized with these programs (at least). There are tons of little programs that will let you do real magic on the command line.

[some samples are taken from man pages or FAQs]