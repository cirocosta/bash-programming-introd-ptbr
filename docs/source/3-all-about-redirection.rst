Tudo sobre redirecionamento
============================
Teoria e rápida referência
---------------------------
Existem três descritores de arquivo: **stdin**, **stdout** e **stderror** (sendo std = Standard = Padrão).

Basicamente você pode:

*	redirecionar **stdout para** um **arquivo**
*	redirecionar **stderr para** um **arquivo**
*	redirecionar **stdout para** um **stderr**
*	redirecionar **stderr para** uma **stdout**
*	redirecionar **stderr e stdout** para **arquivo**
*	redirecionar **stderr e stdout ** para **stdout**
* 	redirecionar **stderr e stdout** para **stderr**


Em ShellScript **1** representará *stdout* e **2** representará *stderr*.

Uma pequena anotação quanto à visualização destes: com o comando `less` você pode ver tanto o stdout (que permanecerá no buffer) quanto o stderr que será printado na tela, mas apagado quando tentar 'navegar' (browse) pelo buffer.


Exemplo: stdout para arquivo
------------------------------
Isto fará com que a saida do programa seja escrita no arquivo. 

.. code-block:: bash

         ls -l > ls-l.txt

Aqui, o arquivo chamado `ls-l.txt` será criado e então conterá o que poderia ser visto na tela caso o comando `ls -l` fosse executado.        

Exemplo: stderr 2 arquivo
---------------------------
Isto fará com que a saída do **stderr** seja escrita para um arquivo.

.. code-block:: bash

         grep da * 2> grep-errors.txt

        
Aqui o arquivo chamado `grep-errors.txt' será criado e então conterá o que poderia ser visto da porção do **stderr** da saída do comando `grep da \\*`.

Exemplo: stdout 2 stderr
-------------------------
Isto fara com que a saída de **stderr** do programa seja escrita para o mesmo arquivo do **stdout**.

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
