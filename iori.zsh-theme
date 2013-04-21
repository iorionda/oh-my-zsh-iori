#!/usr/bin/env zsh
local PREFIX='%{$fg_bold[blue]%}[ '
local SUFFIX='%{$fg_bold[blue]%} ]%{$reset_color%}'

local USER_HOST='%{$fg[cyan]%}%n%{$reset_color%} at %{$fg[cyan]%}%m%{$reset_color%}'
local CURRENT_DIR='%{$fg[cyan]%}%~%{$reset_color%}'
local RETURN_CODE='%(?.%{$fg_bold[green]%}.%{$fg_bold[red]%})%?%{$reset_color%}'
local GIT_BRANCH='$(git_prompt_info) $(git_prompt_status)'
local RBENV='%{$fg[yellow]%}$(rbenv_prompt_info)%{$reset_color%}'
local DATETIME='%{$fg[red]%}%D{%Y/%m/%d %H:%M}%{$reset_color%}'
local JOBS='%(1j, %{$fg_bold[blue]%}[ %{$reset_color%}%j%{$fg_bold[blue]%} ],)%{$reset_color%}'
local HISTORY='%{$fg_bold[blue]%}[ %{$reset_color%}%h%{$fg_bold[blue]%} ]'
# local COMMAND_TIP='%{$fg_bold[blue]%}$(wget -qO - http://www.commandlinefu.com/commands/random/plaintext | sed 1d | sed '/^$/d' | sed 's/^/║/g')%{$reset_color%}'

PROMPT="┌─${PREFIX}${USER_HOST} in ${CURRENT_DIR}${GIT_BRANCH}${SUFFIX}-${PREFIX}${RBENV}${SUFFIX}-${PREFIX}${DATETIME}${SUFFIX}-${PREFIX}${RETURN_CODE}${SUFFIX}
└─ %# "

# RPS1="${RETURN_CODE}"
RPROMPT="$(prompt_char)"
# PROMPT="$(git_prompt_status)"

# git theming
ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[red]%} ☀"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[cyan]%} ☂"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%}✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}✱"
ZSH_THEME_GIT_PROMPT_DELETED="$fg[red]✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%}➦"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%}✂"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[grey]%}✈"
