#-------------------------------------------------------
# PATH
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.local/bin/

# Go
#export PATH=$PATH:/usr/local/go/bin/ 
#export GOPATH=$HOME/go 

# Grep
export GREP_COLOR="1;32"

# Less
#export LESS='-R'
#export LESSOPEN='| $HOME/.local/bin/src-hilite-lesspipe.sh %s'

# Editor
export EDITOR=vim

# ddgr
export BROWSER=w3m ddgr query
export DDGR_COLORS=dEfdxY

# tldr
export TLDR_HEADER='blue bold'
export TLDR_QUOTE='green'
export TLDR_DESCRIPTION='normal'
export TLDR_CODE='yellow'
export TLDR_PARAM='magenta'

# bat
export BAT_THEME="base16"

# exa
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

# Desable Ctrl-s, Ctrl-q
stty -ixon

# Qt, GTK
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

