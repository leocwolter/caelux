---
date: 2014-06-12
category: geral
title: Bem-vindo ao Blog do CaelUX :)
layout: post
---

##Como criar um post

Todo arquivo dentro da pasta ```src/posts``` será considerado um post.
Se quiser usar [markdown](https://guides.github.com/features/mastering-markdown/) é só salvar com a extensão ```.html.md```.
Todo post deve conter um cabeçalho como o do exemplo:
```
---
date: yyyy-mm-dd
category: categoriaDoPost
title: nomeDoPost
layout: post
---
```
Tudo que vier abaixo desse cabeçalho será considerado conteúdo.

##As Categorias
Por enquanto temos as categorias:
- ata
- novosConhecimentos
- geral

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

##Deploy
Execute esse comando na raíz do projeto:
```
docpad deploy-ghpages --env static
```
O blog estará em ```http://leocwolter.github.io/caelux```
