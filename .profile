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
