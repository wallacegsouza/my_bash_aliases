
# ALIASES DOCKER

alias dockerkillall='docker kill $(docker ps -q)'
alias dockercleanc='printf "\n>>> Deleting stopped containers\n\n" && docker rm $(docker ps -a -q)'
alias dockercleani='printf "\n>>> Deleting untagged images\n\n" && docker rmi $(docker images -q -f dangling=true)'
alias dockerclean='dockercleanc || true && dockercleani'
alias dockerstop='docker stop $(docker ps -aq)'
alias dockerrmiall='docker rmi $(docker images)'
alias dockerdeadcommand='docker rm -f $(docker ps -a -q) && docker rmi -f $(docker images -q) && docker volume prune -f && docker network prune -f'

# ALIASES DOCKER-COMPOSE

alias dcup='docker-compose up'
alias dcbuild='docker-compose build'
alias dcrun='docker-compose run --rm'
alias dcdown='docker-compose down'
alias dcrspec='dcrun web '

# ALIASES TERMINAL

alias cls='printf "\033c"'

# ALIASES GIT

alias gc='git checkout'
alias gcb='git checkout -b'
alias glog='git log --graph --pretty=oneline --abbrev-commit'

# Spring Boot

alias bootrt='gradle bootRun -Pjenv=test'