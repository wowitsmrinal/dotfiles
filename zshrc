# ZSH
export ZSH="${HOME}/.oh-my-zsh"
ZSH_THEME="pygmalion-custom"
DISABLE_UPDATE_PROMPT="true"
plugins=(sudo git colored-man-pages colorize pip virtualenv zsh-autosuggestions dircycle zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
export EDITOR='vim'
autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do compinit; done
compinit -C

# FZF Fuzzy Finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# PATH updates
export PATH="/opt/miniconda3/bin:$PATH"

# Functions
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Aliases
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
