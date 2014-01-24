Pipes
======
This section explains in a very simple and practical way how to use pipes, nd why you may want it.

O que eles são e porque vai usá-los
------------------------------------
Pipes let you use (very simple, I insist) the output of a program as the input of another one

Pipe simples com 'sed'
------------------------
This is very simple way to use pipes.

.. code-block:: bash

         ls -l | sed -e "s/[aeio]/u/g"   

        
Here, the following happens: first the command ls -l is executed, and it's output, instead of being printed, is sent (piped) to the sed program, which in turn, prints what it has to.

Exemplo: uma alternativa para ls -l *.txt
-------------------------------------------
Probably, this is a more difficult way to do ls -l *.txt, but it is here for illustrating pipes, not for solving such listing dilema.

.. code-block:: bash

         ls -l | grep "\.txt$"

        
Here, the output of the program ls -l is sent to the grep program, which, in turn, will print lines which match the regex "\.txt$".