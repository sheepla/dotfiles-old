#!/bin/bash
# My Settings --------------------------------------------------------------------

# Desable Ctrl-s / Ctrl-q
stty -ixon


# Less
#export LESS='-R'

# man (less wrapper)
# https://wiki.archlinux.jp/index.php/%E3%82%B3%E3%83%B3%E3%82%BD%E3%83%BC%E3%83%AB%E3%81%AE%E3%82%AB%E3%83%A9%E3%83%BC%E5%87%BA%E5%8A%9B#man
# ---------------------------
# md    header, option property
# me    ?
# so    status bar
# ue    ?
# us    option value
#man() {
#    LESS_TERMCAP_md=$'\e[01;34m' \
#    LESS_TERMCAP_me=$'\e[0m' \
#    LESS_TERMCAP_se=$'\e[0m' \
#    LESS_TERMCAP_so=$'\e[40;37m' \
#    LESS_TERMCAP_ue=$'\e[0m' \
#    LESS_TERMCAP_us=$'\e[36m' \
#    command man "$@"
#}

# Colorrc
#eval `dircolors -b ~/.colorrc`

# Powerline-shell ---------------------------------------------- {{{
# https://github.com/b-ryan/on _update_ps1()ine-shell#bash
# launch daemon
#function _update_ps1() {
#    PS1=$(powerline-shell $?)
#}
#
#if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
#        PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi
#}}}
