# BASH ALIASES FOR DOCKER

Criando aliases para os comandos de kill, stop container e rmi images.

Versão do Script 0.1
================

Configuração inicial
---------------------

Para que o aliases funcione, você deve salvar o código abaixo na sua /home/nome-do-seu-usuario/.bash_aliases

```bash
alias dockerkillall='docker kill $(docker ps -q)'
alias dockercleanc='printf "\n>>> Deleting stopped containers\n\n" && docker rm $(docker ps -a -q)'
alias dockercleani='printf "\n>>> Deleting untagged images\n\n" && docker rmi $(docker images -q -f dangling=true)'
alias dockerclean='dockercleanc || true && dockercleani'
```

Documentação
----------------------

Para utilizar os comandos basta fechar e abrir o terminal, caso você esteja com seu terminal aberto. Os comandos são:

"Matar" todos os containers

```bash
dockerkillall
```
Deletando os containers parados:

```bash
dockercleanc
```
Deleta todas as images sem tag

```bash
dockercleani
```
Deleta todos os containers parado e deleta todas as images sem tag.

```bash
dockerclean
```


### Links diretos

Desenvolvimento
---------------------
-   [Wallace Souza](http://www.)
