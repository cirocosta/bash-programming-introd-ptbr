Variáveis
============

Vocẽ pode usar variáveis assim como em qualquer outra linguagem de programação. Não há tipos de dados. A variável em bash pode conter um numero, um caracter ou uma lista de caracteres.

Não há necessidade que a variável seja declarada, apenas assinalar um valor há sua referência irá criá-la.

Exemplo: Hello World! usando variáveis
---------------------------------------
.. code-block:: bash

    #!/bin/bash
    STR="Hello World"
    echo $STR

A segunda linha cria uma variável chamada STR e a ela assinala a string "Hello World". Então o *valor* de sua variável é obtido colocando o `$`(*dollar-sign*) antes da mesma. Note (e tente) que se não utilizar o `$` a saída do programa será diferente, e provavelmente não o que quer que seja.

Exemplo: Um script de backup muito simples (um pouco melhor)
-------------------------------------------------------------
.. code-block:: bash

    #!/bin/bash
    OF=/var/my-backup-$(data +%Y%m%d).tgz
    tar -cZf $OF /home/me

Este script introduz outra coisa. Pirmeiro de tudo você deve familiarizar-se com a criação e atribuição de valor à variável na segunda linha. Note a expressão `$(date +%Y%m%d)`. Se você rodar este script irá notar que é chamado o comando de dentro do parêntesis e é então capturado sua saída.

Note que neste script o arquivo de saída será diferente a cada dia, dado que o mesmo é alterado pelo comando de formatação de datas `(date +%Y%m%d)`. (Você pode alterar isto especificando um formato diferente).

Outro exemplo:
.. code-block:: bash

    #!/bin/bash
    echo ls
    echo $(ls)


Variáveis Locais
-----------------
Variáveis locais podem ser criadas utilizando a palavra chave `local`.

.. code-block:: bash

    #!/bin/bash
    HELLO=Hello 
    function hello {
            local HELLO=World
            echo $HELLO
    }
    echo $HELLO
    hello
    echo $HELLO

Este exemplo deve ser o suficiente para mostrar como se utiliza uma variável local.
