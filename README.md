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

#### DOCKER

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

Parar os containers ( docker stop $(docker ps -aq) )

```bash
 dockerstop
```

Remover todas as imagens

```bash
 dockerrmiall
```

Remover tudo ( CONTAINERS IMAGE, VOLUME, NETWORK) **CUIDADO COM ESSE COMANDO** **Você sabe o que está fazendo ne?**

docker rm -f $(docker ps -a -q) && docker rmi -f $(docker images -q) && docker volume prune -f && docker network prune -f

O comando faz na força bruta a parada dos containers e remove tudo na força bruta. [ CUIDADO!!!!!]

```bash
dockerdeadcommand
```

#### DOCKER-COMPOSE

Subir uma aplicação com docker-compose up

```bash
  dcup
```

Contruir o container a partir do Dockerfile e docker-compose.yml: ( docker-compose build )

```bash
  dcbuild
```

Executar um determinado container e depois de utilizar remover: docker-compose run --rm 

```bash
  dcrun
```

Derrubar toda estrutura do container atual: docker-compose down

```bash
 dcdown
```

#### GIT

Mudar de branch (git checkout [ NOME DA BRANCH ])

```bash
gc
```

Criar uma nova branch ( git checkout -b [ NOME DA BRANCH ])

```bash
 gcb
```

Visualizar os logs com gráfico e em uma linha ( git log --graph --pretty=oneline --abbrev-commit )

```bash
glog

```

### Spring Boot

Executar uma projeto spring boot usando gradle com a prop jenv=test( gradle bootRun -Pjenv=test )

```bash
bootrt

```

### Links diretos

Desenvolvimento
---------------------
-   [Wallace Souza](http://www.)
