Condicionais
=============

Condicionais dão-lhe o poder de decidir entre perfomar uma ação ou não após ser verificada uma expressão.


Teoria Pura
------------
Condicionais possuem várias formas. Em sua forma mais básica: 

.. code-block:: bash

	se expressao, então 
		declaração

é apenas executada se a expressão for verificada como Verdade. Por exemplo:

.. code-block:: bash

	# Verdadeiro
	2 < 1
	#Falso
	2 > 1 

Condicionais possuem outras formas tais como:

.. code-block:: bash

	se condição, então
		declaração1
	caso contrário
		declaração2

Neste caso `declaração1` é executada apenas se `condição` é verdadeira, caso contrário `declaração2` é executada.

Enquanto outra forma de condicional é:

.. code-block:: bash

	se condição1, então
		declaraçaõ1
	senão se condição2, então
		declaração2
	caso contrário
		declaração3

Neste caso apenas é adicionada a condição da `condição2` para ser avaliada também, que chamará a `declaração2` se a condição for verdadeira. O restante é como pode ser imaginado (veja anteriores). 

Sobre a sintaxe:

A base dos *se* e *senão* (**if** e **else**) em bash é:

.. code-block:: bash

	if [expression];
	then
	code if 'expression' is true.
	fi

Exemplo: Condicional básica **if** .. **then**
------------------------------------------------
.. code-block:: bash

     #!/bin/bash
    if [ "foo" = "foo" ]; then
       echo expressão avaliada como verdadeira
    fi
            
O código a ser executado se a expressão entre colchetes é verdadeira pode ser encontrada depois da palavra `then` e antes do `fi`, que indica o fim de um código condicionalmente executado. 


Exemplo: Condicional básica if .. then ... else
------------------------------------------------------------
.. code-block:: bash

     #!/bin/bash
    if [ "foo" = "foo" ]; then
       echo expressão avaliada como verdadeira
    else
       echo expressão avaliada como false
    fi
            
Exemplo: Condicionais com Variáveis
----------------------------------------
.. code-block:: bash

	 #!/bin/bash
	T1="foo"
	T2="bar"
	if [ "$T1" = "$T2" ]; then
	    echo expressão avaliada como verdadeira
	else
	    echo expressão avaliada como false
	fi
            
