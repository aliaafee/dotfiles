# user bin
export PATH=$PATH:~/.bin:~/.local/bin

# plasma proper scaling
# export PLASMA_USE_QT_SCALING=1
# export GDK_SCALE=2

# oh-my-zsh configuration
export ZSH=/usr/share/oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Vim Keybindings
bindkey -v

# Vim mode display
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/n}/(main|viins)/}"
    RPS2=$RPS1
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

# Compinstall
zstyle :compinstall filename '/home/ali/.zshrc'
autoload -Uz compinit
compinit

# Turn of shared history
unsetopt share_history

# Aliases
#alias gvim="gvimhi"
alias venew="python -m venv venv"
alias cdp="cd ~/Projects"
alias vea="source ./venv/bin/activate"
alias cde="cd ~/Experiments"
alias open="xdg-open"
alias untar="tar xvzf"
