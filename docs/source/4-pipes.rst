Pipes
======
Esta seção explicará de uma maneira bem breve e prática como se utilizar pipes (e você deve querê-la).

O que eles são e porque vai usá-los
------------------------------------
Pipes deixam você utilizar (de uma maneira muito simples, insisto) a saída de um programa como a entrada de outro.

Pipe simples com 'sed'
------------------------
Esta é uma maneira muito simples de utilizar pipes:

.. code-block:: bash

         ls -l | sed -e "s/[aeio]/u/g"   


O que acontece: primeiro o comando `ls -l` é executado e sua saída, ao invés de printada, é enviada (piped) para o programa `sed`, que, no caso, printa sua saída.        

Exemplo: uma alternativa para ls -l \*.txt
-------------------------------------------
Provavelmente esta seja uma maneira mais difícil do que paneas fazer `ls -l *.txt`, porém deseja-se apenas ilustrar o uso dos pipes, e não resolver tal dilema.

.. code-block:: bash

         ls -l | grep "\.txt$"


Aqui a saída do programa `ls l` é enviada para o `grep`, que, no caso, irá printar linhas cujo padrão combinam com a expressão regulas (regex) `\\.txt$`         
