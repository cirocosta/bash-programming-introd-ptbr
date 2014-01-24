User Interfaces
==================
Usando 'select' para criar menus simples
-----------------------------------------
.. code-block:: bash

    #!/bin/bash
   OPTIONS="Hello Quit"
   select opt in $OPTIONS; do
       if [ "$opt" = "Quit" ]; then
        echo done
        exit
       elif [ "$opt" = "Hello" ]; then
        echo Hello World
       else
        clear
        echo bad option
       fi
   done
          
If you run this script you'll see that it is a programmer's dream for text based menus. You'll probably notice that it's very similar to the 'for' construction, only rather than looping for each 'word' in $OPTIONS, it prompts the user.

Usando a linha de comando
----------------------------
.. code-block:: bash

	#!/bin/bash        
	if [ -z "$1" ]; then 
	  echo usage: $0 directory
	  exit
	fi
	SRCD=$1
	TGTD="/var/backups/"
	OF=home-$(date +%Y%m%d).tgz
	tar -cZf $TGTD$OF $SRCD
         
What this script does should be clear to you. The expression in the first conditional tests if the program has received an argument ($1) and quits if it didn't, showing the user a little usage message. The rest of the script should be clear at this point.