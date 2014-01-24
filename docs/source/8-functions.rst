Functions
============
As in almost any programming language, you can use functions to group pieces of code in a more logical way or practice the divine art of recursion.

Declaring a function is just a matter of writing function my_func { my_code }.

Calling a function is just like calling another program, you just write its name.

Exemplo de Função
----------------------
.. code-block:: bash

    #!/bin/bash 
   function quit {
       exit
   }
   function hello {
       echo Hello!
   }
   hello
   quit
   echo foo 
           
Lines 2-4 contain the 'quit' function. Lines 5-7 contain the 'hello' function If you are not absolutely sure about what this script does, please try it!.

Notice that a functions don't need to be declared in any specific order.

When running the script you'll notice that first: the function 'hello' is called, second the 'quit' function, and the program never reaches line 10.

Exemplo de função com parâmetro
----------------------------------
.. code-block:: bash

     #!/bin/bash 
    function quit {
       exit
    }  
    function e {
        echo $1 
    }  
    e Hello
    e World
    quit
    echo foo 

           
This script is almost identically to the previous one. The main difference is the funcion 'e'. This function, prints the first argument it receives. Arguments, within funtions, are treated in the same manner as arguments given to the script.
