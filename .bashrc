#
# ~/.bashrc
#

# Desable Ctrl-s, Ctrl-q
stty -ixon

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
#PS1='[\e[32m\u@\h\e[m: \e[34m\w\e[m]\$ '

source ~/.aliases &>/dev/null

#command -v starship &>/dev/null && eval "$(starship init bash)"
command -v gh &>/dev/null && eval "$(gh completion -s bash)"

# bash-completion
_set_completion() {
    local src
    src='/usr/share/bash-completion/bash_completion'
    [ -f "${src}" ] && source "${src}"
}
_set_completion

# enhancd
_set_enhancd() {
    local src
    src="${HOME}/ghq/github.com/b4b4r07/enhancd/init.sh"
    [ -f "${src}" ] && source "${src}"
}
_set_enhancd

# fzf-tab-completion
_set_fzf_tab_completion() {
    local src
    src="${HOME}/ghq/github.com/lincheney/fzf-tab-completion/bash/fzf-bash-completion.sh"
    [ -f "${src}" ] && source "${src}" && bind -x '"\C-t": fzf_bash_completion'
}
_set_fzf_tab_completion

# fzf-extras
_set_fzf_completion() {
    local completion='/usr/share/fzf/completion.bash'
    [ -f "${completion}" ] && source "${completion}"
    local keybings='/usr/share/fzf/key-bindings.bash'
    [ -f "${keybings}" ] && source "${keybings}"
}
_set_fzf_completion

# prompt
_set_prompt() {
    command -v starship &>/dev/null && eval "$(starship init bash)"
}
_set_prompt
