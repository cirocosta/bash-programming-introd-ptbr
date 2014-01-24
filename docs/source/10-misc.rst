Misc
======
10.1 Reading user input with read
------------------------------------
In many ocations you may want to prompt the user for some input, and there are several ways to achive this. This is one of those ways:

.. code-block:: bash

                 #!/bin/bash
                echo Please, enter your name
                read NAME
                echo "Hi $NAME!"

        
As a variant, you can get multiple values with read, this example may clarify this.

.. code-block:: bash

         #!/bin/bash
        echo Please, enter your firstname and lastname
        read FN LN 
        echo "Hi! $LN, $FN !"

        
10.2 Arithmetic evaluation
------------------------------
On the command line (or a shell) try this:

`echo 1 + 1`

If you expected to see '2' you'll be disappointed. What if you want BASH to evaluate some numbers you have? The solution is this:

`echo $((1+1))`

This will produce a more 'logical' output. This is to evaluate an arithmetic expression. You can achieve this also like this:

`echo $[1+1]`

If you need to use fractions, or more math or you just want it, you can use bc to evaluate arithmetic expressions.

if i ran `echo $[3/4]` at the command prompt, it would return 0 because bash only uses integers when answering. If you ran `echo 3/4|bc -l`, it would properly return 0.75.

10.3 Finding bash
------------------
From a message from mike (see Thanks to)

you always use `#!/bin/bash` .. you might was to give an example of

how to find where bash is located.

`locate bash` is preferred, but not all machines have locate.

`find ./ -name bash` from the root dir will work, usually.

Suggested locations to check:

.. code-block:: bash

    ls -l /bin/bash
    ls -l /sbin/bash
    ls -l /usr/local/bin/bash
    ls -l /usr/bin/bash
    ls -l /usr/sbin/bash
    ls -l /usr/local/sbin/bash


(can't think of any other dirs offhand... i've found it in

most of these places before on different system).

You may try also 'which bash'.

10.4 Getting the return value of a program
--------------------------------------------
In bash, the return value of a program is stored in a special variable called $?.

This illustrates how to capture the return value of a program, I assume that the directory dada does not exist. (This was also suggested by mike)

.. code-block:: bash

         #!/bin/bash
        cd /dada &> /dev/null
        echo rv: $?
        cd $(pwd) &> /dev/null
        echo rv: $?
        
10.5 Capturing a commands output
------------------------------------
This little scripts show all tables from all databases (assuming you got MySQL installed). Also, consider changing the 'mysql' command to use a valid username and password.

.. code-block:: bash

         #!/bin/bash
        DBS=`mysql -uroot  -e"show databases"`
        for b in $DBS ;
        do
                mysql -uroot -e"show tables from $b"
        done
        
10.6 Multiple source files
------------------------------
You can use multiple files with the command source.