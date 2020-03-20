# How to install dein.vim (memo)

## Repository
[Shougo/dein.vim] (https://github.com/Shougo/dein.vim)

## Install dein.vim

Install with `dein_installer.sh` .

``` bash
sh ./dein_installer.sh ~/.cache/dein
```

Append your vimrc example: `~/.vimrc` .

``` vim

if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

```

and, Execute command at vim then install plugins.

``` vim
:call dein#install()
```

## Basic usage

To install vim plugins:

``` vim
call dein#add('user-name/repository-name')
```

To uninstall vim plugins: Delete line  `call dein#add('***')` from your vimrc.
