# vim:ft=zsh:

if [ $UID -eq 0 ]; then CARETCOLOR="red"; else CARETCOLOR="blue"; fi

REPORTTIME=10  # show execution times for long-running commands

local return_code="%(?..%{$fg[red]%}↵ %? %{$reset_color%})"
local user=
if [ "$USER" != gebner ]; then user='%{$fg[cyan]%}%n%{$fg_bold[blue]%}@%{$reset_color%}'; fi

PROMPT="${user}"'%{${fg[cyan]}%}%m %{${fg_bold[blue]}%}:: %{$reset_color%}%{${fg[green]}%}%3~ $(git_prompt_info)'"${return_code}"'%{${fg_bold[$CARETCOLOR]}%}»%{${reset_color}%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
