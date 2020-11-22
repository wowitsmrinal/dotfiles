# Yay! High voltage and arrows!

prompt_setup_pygmalion(){
  ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}"
  ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}⚡%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_CLEAN=""

  base_prompt='%{$reset_color%}%{$fg[cyan]%}%0~%{$reset_color%}%{$fg[red]%}|'
  venv_prompt='%{$reset_color%}%{$fg[cyan]%}$(virtualenv_prompt_info)'

  post_prompt='%{$fg[cyan]%}⇒%{$reset_color%}  '

  base_prompt_nocolor=$(echo "$base_prompt" | perl -pe "s/%\{[^}]+\}//g")
  post_prompt_nocolor=$(echo "$post_prompt" | perl -pe "s/%\{[^}]+\}//g")

  autoload -U add-zsh-hook
  add-zsh-hook precmd prompt_pygmalion_precmd
}

prompt_pygmalion_precmd(){
  local exp_nocolor="$(print -P \"$base_prompt_nocolor$post_prompt_nocolor\")"
  local prompt_length=${#exp_nocolor}

  PROMPT="$base_prompt$post_prompt"
}

prompt_setup_pygmalion

# Time on the right
RPROMPT+="$venv_prompt%{$reset_color%}%{$fg[black]%}%*"
