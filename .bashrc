# My Settings --------------------------------------------------------------------

# PATH
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.local/bin/
export PATH=$PATH:/home/hayato/.cargo/bin

# Desable Ctrl-s / Ctrl-q
stty -ixon

# Aliases ---------------------------------- {{{

# Basic commands
alias c='clear'
alias mkd='mkdir -pv'
alias py3='python3'
# Setting files
alias rebash='source ~/.bashrc'
alias bashrc='vim ~/.bashrc'
alias profile='vim ~/.profile'
alias reprofile='source ~/.profile'
alias vimrc='vim ~/.vimrc'
alias path='echo $PATH | tr ":" "\n"'

# Git
alias g='git'
alias ga='git add'
alias gst='git status'
alias gl='git log --decorate --oneline'
alias glg='git log --decorate --oneline --graph'
alias gcm='git commit'
alias gdf='git diff'

# W3m
alias w3mg='w3m www.google.com'
alias w3md='w3m www.duckduckgo.com'

# terminal
alias xfterm='xfce4-terminal'
alias terminalrc='vim ~/.config/xfce4/terminal/terminalrc'

# tar
alias mktar='tar -cvf'
alias extar='tar -xvf'
alias mktargz='tar -zxcf'
alias extargz='tar -zxvf'
alias mktarxz='tar -Jcvf'
alias extarxz='tar -Jxvf'

# translate-shell(trans)
alias en2ja='trans en:ja -brief -shell -e google'
alias ja2en='trans ja:en-brief -shell -e google'
alias eiwa='trans en:ja -dictionary -e google'
alias waei='trans ja:en -dictionary -e google'

# Other
alias r='ranger'
alias fontlist="fc-list | awk -F '[:,]' '{print $2}' | sort | uniq"
# }}}

# fuzzy finder ------------------------------------ {{{
alias fzd='find . -type d | fzf | sed "s/ /\\ /g"'

# Grep
export GREP_COLOR="1;32"

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

# ddgr -----------------------------------
export BROWSER=w3m ddgr query
export DDGR_COLORS=dEgdxY
function bang() {
    ddgr --noprompt \!${1} ${@:2}
}

# tldr -----------------------------------
export TLDR_HEADER='blue bold'
export TLDR_QUOTE='green'
export TLDR_DESCRIPTION='normal'
export TLDR_CODE='yellow'
export TLDR_PARAM='magenta'

# fzf ------------------------------------
[ -f ~/.fzf.bash ] && source ~/.fzf.bash


# URxvt terminal -------------------------
# reload config file
alias rexrc='xrdb ~/.Xresources'

# bat -----------------------------------
#export BAT_THEME="iceberg16"
alias rebat='bat cache --build'
alias bat='bat --wrap auto'

# exa ----------------------------------
export EXA_COLORS=\
'ur=1;34:'\
'uw=1;36:'\
'ux=1;32:'\
'ue=1;;32:'\
'gr=1;37:'\
'gw=1;37:'\
'gx=1;37:'\
'tr=1;37:'\
'tw=1;37:'\
'tx=1;37:'\
'su=1;37:'\
'sf=1;37:'\
'xa=1;32:'\
'uu=1;34:'\
'un=37:'\
'gu=1;34:'\
'gn=37:'\
'da=37'

#alias l='exa -F'
#alias ls='exa -F'
#alias ll='exa --long --git -F --time-style=iso'
#alias lt='exa --long --git -F --time-style=iso --tree'
#alias la='exa -aF'

