# https://github.com/ohmyzsh/ohmyzsh/wiki/Design
# This theme requires the plugin [git-prompt-enhanced](https://github.com/LFabre/zsh-git-prompt-enhanced)
# This theme uses Nerd Font Icons
# \uE0A0 - Git Branch Icon

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}(\Ue725 "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[magenta]%})"

PROMPT="
 %(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT+='%{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_enhanced_status) '

RPROMPT=""
