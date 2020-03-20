# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

#-------------------------------------------------------
# PATH
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.local/bin/

# Go
export PATH=$PATH:/usr/local/go/bin/ 
export GOPATH=$HOME/go 
export EDITOR=vim

# Grep
export GREP_COLOR="1;32"

# Less
export LESS='-R'
export LESSOPEN='| $HOME/.local/bin/src-hilite-lesspipe.sh %s'

# ddgr
export BROWSER=w3m ddgr query
export DDGR_COLORS=dEfdxY


# tldr
export TLDR_HEADER='blue bold'
export TLDR_QUOTE='green'
export TLDR_DESCRIPTION='normal'
export TLDR_CODE='yellow'
export TLDR_PARAM='magenta'
