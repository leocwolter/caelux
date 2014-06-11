#Blog do CaelUX

Para gerar o site estamos usando o [Docpad](http://docpad.org/) e como linguagem de template o [Handlebars](http://handlebarsjs.com/) :)

##Como criar um post

Todo arquivo dentro da pasta ```src/posts``` será considerado um post.

É possível usar [markdown](https://guides.github.com/features/mastering-markdown/) e até mesmo o hadlebars.

Todo post deve conter um cabeçalho como o do exemplo:
```
---
category: categoriaDoPost
title: nomeDoPost
---
```
Tudo que vier abaixo desse cabeçalho será considerado conteúdo.

##Categorias

Lá no arquivo ```docpad.js``` temos uma variável ```categories```. Se precisar adicionar ou editar uma categoria, é só mexer lá.

##Como testar na sua máquina

Você vai precisar instalar o [NodeJS](http://nodejs.org/) e depois executar o seguinte comando na raíz do projeto:
```
npm install
```

Se tudo der certo na instalação das dependências (comando acima), é só executar o seguinte comando:
```
docpad run
```

O blog estará em ```http://localhost:9778```

##Possíveis erros
- Se o ```npm install``` falhou, tente rodar com ```sudo```;
- Se o ```docpad run``` não funcionou depois que você adicionou seu post, provavelmente há algum erro de sintaxe que zuou a vida na hora de parsear. Dê uma boa olhada no seu arquivo do post;
