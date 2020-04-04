#! /bin/bash
#     ____             __             
#    / __ )____ ______/ /_  __________ 
#   / __  / __ `/ ___/ __ \/ ___/ ___/
#  / /_/ / /_/ (__  ) / / / /  / /__  
# /_____/\__,_/____/_/ /_/_/   \___/  
#                                     

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
#alias ll='ls -alFh'
#alias la='ls -A'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

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
export LESSOPEN='| $HOME/.local/bin/src-hilite-lesspipe.sh %s'

# man (less wrapper)
# https://wiki.archlinux.jp/index.php/%E3%82%B3%E3%83%B3%E3%82%BD%E3%83%BC%E3%83%AB%E3%81%AE%E3%82%AB%E3%83%A9%E3%83%BC%E5%87%BA%E5%8A%9B#man
# ---------------------------
# md    header, option property
# me    ?
# so    status bar
# ue    ?
# us    option value
man() {
    LESS_TERMCAP_md=$'\e[01;34m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[40;37m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[36m' \
    command man "$@"
}

# Colorrc
#eval `dircolors -b ~/.colorrc`

# on _update_ps1()ine-shell ---------------------------------------------- {{{
# https://github.com/b-ryan/on _update_ps1()ine-shell#bash
# launch daemon
function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
        PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
#}}}

# ddgr
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
export BAT_THEME="iceberg16"
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

alias l='exa -F'
alias ls='exa -F'
alias ll='exa --long --git -F --time-style=iso'
alias lt='exa --long --git -F --time-style=iso --tree'
alias la='exa -aF'

