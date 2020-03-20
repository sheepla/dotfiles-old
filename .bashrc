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
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

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
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \$\[\033[00m\] '
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
alias ll='ls -l --color=auto'
alias la='ls -A --color=auto'
alias la='ls -Al --color=auto'
alias l='ls -CF --color=auto'

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

# ===================================================
# My Settings
# ===================================================

# PATH
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.local/bin/

# Aliases ---------------------------------- {{{
# ls
# clear
alias c='clear'

# Setting files
alias rebash='source ~/.bashrc'
alias bashrc='editor ~/.bashrc'
alias rexrc='xrdb ~/.Xresources'
alias xrc='editor ~/.Xresources'
alias profile='editor ~/.profile'
alias colorrc='editor ~/.colorrc'
alias vimrc='editor ~/.vimrc'
alias path='echo $PATH | tr ":" "\n"'

# w3m
alias w3mg='w3m www.google.com'
alias w3md='w3m www.duckduckgo.com'

# tar
alias mktar='tar -cvf'
alias extar='tar -xvf'
alias mktargz='tar -zxcf'
alias extargz='tar -zxvf'
alias mktarxz='tar -Jcvf'
alias extarxz='tar -Jxvf'

# translate-shell(trans)
alias en2ja='trans en:ja -brief -shell'
alias ja2en='trans ja:en-brief -shell'
alias eiwa='trans en:ja -dictionary'
alias waei='trans ja:en -dictionary'

# Ruby
alias irbs='irb --simple-prompt'

# Python
alias py3='python3'

# }}}

# fuzzy finder ------------------------------------ {{{
alias fzd='find . -type d | fzf | sed "s/ /\\ /g"'
# `cd` with fuzzy search
function cdf() {
    if [ -d $1 ]; then
        find_root=$1
    else
        find_root="."
    fi

    dir=$(find $1 -type d -not -path "*.git/*" | fzf | sed "s/ /\ /g")

    cd $dir
}

# open pdf file with fuzzy search
function fzpdf() {
    if [ -d $1 ]; then
        find_root=$1
    else
        find_root="."
    fi

    pdf_files=$(find $find_root -type f -name "*.pdf" | fzf --multi | sed "s/ /\ /g")
    pdf_viewer="mupdf"

    for f in $pdf_files; do
        $pdf_viewer $f
    done
}

function fzimg() {
    if [ -d $1 ]; then
        find_root=$1
    else
        find_root="."
    fi

    # Select image files
    img_files=$(find $find_root -type f -name "*.jpg" -or -name "*.png" -or -name "*.gif" | fzf --multi | sed "s/ /\ /g")
    img_viewer="sxiv"

    # Open image files
    $img_viewer $img_files
}

# }}}

# cmatrix
alias cmatrix='cmatrix -o -C blue -u 8'

# tty-clock
alias tclock='tty-clock -s -c -C 4'

# screenfetch
alias sfetch='screenfetch 2>/dev/null'

# Grep
export GREP_COLOR="1;32"

# Less
export LESS='-R'
export LESSOPEN='| $HOME/bin/src-hilite-lesspipe.sh %s'

# man wrapper
# https://wiki.archlinux.jp/index.php/%E3%82%B3%E3%83%B3%E3%82%BD%E3%83%BC%E3%83%AB%E3%81%AE%E3%82%AB%E3%83%A9%E3%83%BC%E5%87%BA%E5%8A%9B#man
# ---------------------------
# md    header, option property
# me    ?
# so    status bar
# ue    ?
# us    option value
man() {
    LESS_TERMCAP_md=$'\e[1;34m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[1;32m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[1;36m' \
    command man "$@"
}

# Powerline-shell
# https://github.com/b-ryan/powerline-shell#bash
function _update_ps1() {
    PS1=$($HOME/.local/bin/powerline-shell $?)
}
if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# ddgr
export BROWSER=w3m ddgr query
export DDGR_COLORS=dEfdxY
function bang() {
    ddgr --noprompt \!${1} ${@:2}
}

# tldr
export TLDR_HEADER='blue bold'
export TLDR_QUOTE='green'
export TLDR_DESCRIPTION='normal'
export TLDR_CODE='yellow'
export TLDR_PARAM='magenta'

# fzf
# [ -f ~/.fzf.bash ] && source ~/.fzf.bash
