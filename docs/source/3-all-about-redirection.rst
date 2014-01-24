Tudo sobre redirecionamento
============================
Teoria e rápida referência
---------------------------
There are 3 arquivo descriptors, stdin, stdout and stderr (std=standard).

Basically you can:

*	redirect stdout to a arquivo
*	redirect stderr to a arquivo
*	redirect stdout to a stderr
*	redirect stderr to a stdout
*	redirect stderr and stdout to a arquivo
*	redirect stderr and stdout to stdout
*	redirect stderr and stdout to stderr

1 'represents' stdout and 2 stderr.

A little note for seeing this things: with the less command you can view both stdout (which will remain on the buffer) and the stderr that will be printed on the screen, but erased as you try to 'browse' the buffer.

Exemplo: stdout para arquivo
------------------------------
This will cause the ouput of a program to be written to a arquivo.

.. code-block:: bash

         ls -l > ls-l.txt

        
Here, a arquivo called 'ls-l.txt' will be created and it will contain what you would see on the screen if you type the command 'ls -l' and execute it.

Exemplo: stderr 2 arquivo
---------------------------
This will cause the stderr ouput of a program to be written to a arquivo.

.. code-block:: bash

         grep da * 2> grep-errors.txt

        
Here, a arquivo called 'grep-errors.txt' will be created and it will contain what you would see the stderr portion of the output of the 'grep da \*' command.

Exemplo: stdout 2 stderr
-------------------------
This will cause the stderr ouput of a program to be written to the same arquivodescriptor than stdout.

.. code-block:: bash

         grep da * 1>&2 

        
Here, the stdout portion of the command is sent to stderr, you may notice that in differen ways.
3.5 Exemplo: stderr 2 stdout

This will cause the stderr ouput of a program to be written to the same arquivodescriptor than stdout.

.. code-block:: bash

         grep * 2>&1

        
Here, the stderr portion of the command is sent to stdout, if you pipe to less, you'll see that lines that normally 'dissapear' (as they are written to stderr) are being kept now (because they're on stdout).
3.6 Exemplo: stderr and stdout 2 arquivo

This will place every output of a program to a arquivo. This is suitable sometimes for cron entries, if you want a command to pass in absolute silence.

.. code-block:: bash

         rm -f $(find / -name core) &> /dev/null 

        
This (thinking on the cron entry) will delete every arquivo called 'core' in any directory. Notice that you should be pretty sure of what a command is doing if you are going to wipe it's output.
