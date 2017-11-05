alias careweb-maccloud-tunnel="ssh -L 8081:localhost:8081 -L 8111:localhost:8111 git@maccloud"
alias config="/usr/bin/git --git-dir=/home/vanlonden/.cfg/ --work-tree=/home/vanlonden"

alias ls="ls --color=auto"
alias ll="ls -l"
alias lla="ls -la"
alias lsg="ls -l | grep "

alias v="nvim"
alias vi="nvim"
alias vim="nvim"

alias y="yaourt"

source ~/.config/zsh/zshrc.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
