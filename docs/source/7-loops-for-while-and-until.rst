Loops, For, While e Until
==========================

Nesta seção você aprenderá sobre os loops `for`, `while` e `until`.


O loop `for` é um pouco diferente daquele conhecido em outras linguagens de programaão. Basicamente ele itera sobre uma série de `palavras` dentro de uma lista. 

O `while` executa um pedaço de código se a expressão de controle é avaliada como **verdadeira** e apenas para quando esta for então avaliada como **falsa** (ou então explicitamente parada por um break no código).

O loop `until` é praticamente igual ao `while`, exceto pelo fato deste ser executado enquando a expressão de controle é avaliada como *falsa*. 

Se suspeitar que o **while** assemelha-se muito ao **until** você está correto.


Por Exemplo
------------
.. code-block:: bash

     #!/bin/bash
    for i in $( ls ); do
        echo item: $i
    done
                
On the second line, we declare i to be the variable that will take the different values contained in $( ls ).

The third line could be longer if needed, or there could be more lines before the done (4).

'done' (4) indicates that the code that used the value of $i has finished and $i can take a new value.

This script has very little sense, but a more useful way to use the for loop would be to use it to match only certain files on the previous example

'for' parecido com C 
---------------------
fiesh suggested adding this form of looping. It's a for loop more similar to C/perl... for.

.. code-block:: bash

     #!/bin/bash
    for i in `seq 1 10`;
    do
            echo $i
    done    

        
Exemplo While 
------------------
.. code-block:: bash

	  #!/bin/bash 
	 COUNTER=0
	 while [  $COUNTER -lt 10 ]; do
	     echo The counter is $COUNTER
	     let COUNTER=COUNTER+1 
	 done
         

This script 'emulates' the well known (C, Pascal, perl, etc) 'for' structure

Exemplo Until
------------------

.. code-block:: bash

      #!/bin/bash 
     COUNTER=20
     until [  $COUNTER -lt 10 ]; do
         echo COUNTER $COUNTER
         let COUNTER-=1
     done
         