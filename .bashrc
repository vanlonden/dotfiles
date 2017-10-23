# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

export EDITOR=nvim
export VISUAL=nvim
export USER_HOME=$HOME
export JAVA_HOME=/usr/lib/jvm/java-9-jdk
export JAVA_TOOL_OPTIONS=-Dfile.encoding="ISO-8859-1"
export PATH="$PATH:$HOME/.local/opt/apache-karaf-4.0.5/bin:$HOME/.local/bin:$HOME/.gem/bin"

alias y="yaourt"
alias v="vi"
alias vi="vim"
alias vim="nvim"
alias ls="ls --color=auto"
alias config="/usr/bin/git --git-dir=/home/vanlonden/.cfg/ --work-tree=/home/vanlonden"
alias careweb-maccloud-tunnel="ssh -L 8081:localhost:8081 -L 8111:localhost:8111 git@maccloud"
alias lsg="ls -l | grep "
