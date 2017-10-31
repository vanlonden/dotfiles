# Vars
HISTFILE=~/.zsh_history
SAVEHIST=1000 
setopt inc_append_history # To save every command before it is executed 
setopt share_history # setopt inc_append_history

# Settings
export VISUAL=vim

source $DOTFILES/zsh/plugins/fixls.zsh

#Functions
# Custom cd
c() {
    cd $1;
    ls;
}
alias cd="c"

# For vim mappings: 
stty -ixon

source $DOTFILES/zsh/plugins/oh-my-zsh/lib/history.zsh
source $DOTFILES/zsh/plugins/oh-my-zsh/lib/key-bindings.zsh
source $DOTFILES/zsh/plugins/oh-my-zsh/lib/completion.zsh
source $DOTFILES/zsh/plugins/vi-mode.plugin.zsh
source $DOTFILES/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $DOTFILES/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $DOTFILES/zsh/keybindings.sh

# Fix for arrow-key searching
# start typing + [Up-Arrow] - fuzzy find history forward
if [[ "${terminfo[kcuu1]}" != "" ]]; then
	autoload -U up-line-or-beginning-search
	zle -N up-line-or-beginning-search
	bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
fi
# start typing + [Down-Arrow] - fuzzy find history backward
if [[ "${terminfo[kcud1]}" != "" ]]; then
	autoload -U down-line-or-beginning-search
	zle -N down-line-or-beginning-search
	bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
fi

source $DOTFILES/zsh/prompt.sh
