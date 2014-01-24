[![Imgur](http://i.imgur.com/XOG3WlP.png)](http://bash-programming-introd-howto-pt-br.readthedocs.org/)
Tradução do [Bash Programing HOW TO](http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO.html) de Mike G.
===

O documento original redigido por Mike G pode ser encontrado na [seção de HOW-TOs da The Linux Documentation Project](http://tldp.org/HOWTO/HOWTO-INDEX/howtos.html).


Este Projeto
----------------
Este projeto busca primariamente ser uma fonte de futura referência para o autor e, quem sabe, para a comunidade. Mais do que apenas traduzir, o autor espera que ao apresentar ao público geral um simples documento praticamente puro de HTML numa forma mais iterativa/visualmente agradável, incentivar (ou tentar não desistimular) um número maior de pessoas.


Estrutura
----------------

```
/docs       		-- documentação para o Sphinx
/src
	/2	 				-- códigos do cap. 2
	/3  				-- códigos do cap. 3
	/4  			   	-- etc
setup.sh    	   	-- configura o ambiente de desenvolvimento
requirements.txt   	-- dependências do projeto
```

Conhecida a estrutura do projeto, para *buildar* o mesmo basta, estando no diretório docs:
```bash

$ make html  
```

Será então criados os arquivos da pasta `build`.

O index está em `/docs/build/html/index.html`. Abra-o em seu navegador preferido e estará então no index do mesmo, assim como acessando a página inicial do arquivo no [readthedocs](http://bash-programming-introd-howto-pt-br.readthedocs.org/), porém com outro tema.

