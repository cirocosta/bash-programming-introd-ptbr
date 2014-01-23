Scripts muito simples
=====================

Este *COMO FAZER* lhe dará algumas dicas sobre como programação por schell script é fortemente baseada em exemplos.

Nesta seção você encontrará alguns pequenos scripts que com sorte lhe ajudarão a entender algumas técnicas.

O tradicional script de Hello World
------------------------------------
.. code-block:: bash

    #!/bin/bash
    echo Hello World

O script possui apenas duas linhas. A primeira indica o sistema que o programa usa para rodar o arquivo.

A segunda linha é a única ação performada pelo script, que printa 'Hello World' no terminal.

Se você receber algo parecido com *./hello.sh: Command not found*  provavelmente a primeira linha está errada. Envie ``whereis bash`` ou busque por ``buscando bash`` para ver como escrever esta linha.

Um script de backup muito simples
----------------------------------
.. code-block:: bash

    #!/bin/bash
    tar -cZf /var/my-backup.tgz /home/me/

Neste script, ao invés de printar a mensagem no terminal, criamos um arquivo tar-ball com o diretorio completo do usuario.

Isto não é pretendido para ser utilizado. Um script mais útil de backup será apresentado mais à frente neste documento.