# Miscellaneous configurations
doas loadkeys ~/.config/loadkeys/loadkeysrc
if [[ "$(tty)" == "/dev/tty1" ]]; then
    startx
fi
#XXXXXXXXXXXXXXXXXXXXXXXXX
# 
# neofetch
#XXXXXXXXXXXXXXXXXXXXXXXXX
# export BROWSER="firefox"
export TERMINAL="st"
export TERM="st"
bindkey -e

# Aliases
alias ls='ls --color=auto'
alias ll='ls -Flha --group-directories-first'
alias nv='nvim'
alias vi='vim'
alias i='doas pacman -S'
alias u='doas pacman -Sy pacman; doas pacman -Syu'
alias q='pacman -Q'
alias r='doas pacman -Rs'

# Vi mode
set -o vi

# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

### PATH
export PATH=$HOME/bin:/usr/local/bin:/snap/bin:/opt/bin:$PATH

### ZSH HOME
export ZSH=$HOME/.zsh

### History config
export HISTFILE=$ZSH/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

### Plugins & Themes
source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=($ZSH/plugins/zsh-completions/src $fpath)
source ~/powerlevel10k/powerlevel10k.zsh-theme

# Customize prompt with Powerlevel10k
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

