# ZSH
export ZSH="${HOME}/.oh-my-zsh"
ZSH_THEME="pygmalion-custom"
DISABLE_UPDATE_PROMPT="true"
plugins=(git git-prompt gcloud colorize virtualenv zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
export EDITOR='vim'
autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do compinit; done
compinit -C

# Syntax Highlighting
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[command]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=green,bold'

# FZF Fuzzy Finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# PATH updates
export PATH="/opt/miniconda3/bin:$PATH"

# Functions
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Aliases
alias cd..='cd ..'
alias mv='mv -i'
alias jn='jupyter notebook'
alias vim='nvim'
alias sed='sed -E'

# Python
export PATH=/Users/mrinalmohit/.local/bin:$PATH
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/mrinalmohit/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/mrinalmohit/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/mrinalmohit/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/mrinalmohit/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Golang
export GOROOT=/usr/local/Cellar/go/1.14.5/libexec
export GOPATH=/Users/mrinalmohit/go
