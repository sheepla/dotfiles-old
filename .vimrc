"     __  ___     _    ___                    
"    /  |/  /_  _| |  / (_)___ ___  __________
"   / /|_/ / / / / | / / / __ `__ \/ ___/ ___/
"  / /  / / /_/ /| |/ / / / / / / / /  / /__  
" /_/  /_/\__, / |___/_/_/ /_/ /_/_/   \___/  
"        /____/                               
" ////////////////////////////////////////////////////////////////////////
" Encoding set encoding=utf-8 
scriptencoding utf-8

" Desable sound
set belloff=all

" File ----------------------------------- {{{
"set nobackup
"set noswapfile
"set noundofile
set autoread
set hidden
" }}} 

" Key bindings --------------------------- {{{

" Leader
" let mapleader = '\<Space>'
map <Space> <Leader>

" Normal mode
nnoremap H ^
nnoremap L $
nnoremap <C-j> J
nnoremap <C-k> K

" New line
nnoremap <CR>   o
nnoremap <S-CR> O

" Insert mode
" BackSpace
set backspace=indent,eol,start
inoremap jj <Esc>
inoremap <C-d> <Del>
inoremap <C-h> <BS>
inoremap <C-b> <Left>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-l> <C-o>:set nohlsearch!<CR>

" Brackets
nnoremap <Tab> %
vnoremap <Tab> %
inoremap {     {}<Left>
inoremap {}    {}<Left>
inoremap {<CR> {}<Left><CR><Esc>O
inoremap '     ''<Left>
inoremap ''    ''<Left>
inoremap ""    ""<Left>
inoremap ()    ()<Left>

" Replace
nnoremap S :<C-u>%s___cg<Left><Left><Left><Left>

" Window --------------------------------- {{{
let g:window_leader_key = 's'
nnoremap s <Nop>

" Move
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sH <C-w>H
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
" Resize
nnoremap <S-Up> 2<C-w>+
nnoremap <S-Down> 2<C-w>-
nnoremap <S-Left> 10<C-w><
nnoremap <S-Right> 10<C-w>>
nnoremap ss <C-w><C-w>
nnoremap s+ 2<C-w>+
nnoremap s- 2<C-w>-
nnoremap s= <C-w>=
nnoremap s< 5<C-w><
nnoremap s> 5<C-w>>
" }}}

" New buffer
nnoremap sn :<C-u>new<CR>
nnoremap se :<C-w>edit<Space>
nnoremap sE :<C-u>tabedit<Space>

" Tab
nnoremap st :<C-u>tabnew<CR>
nnoremap <C-Tab>   :<C-u>tabnext<CR>
nnoremap <C-S-Tab> :<C-u>tabprevious<CR>
nnoremap s[ :<C-u>tabprevious<CR>
nnoremap s] :<C-u>tabnext<CR>
nnoremap s{ :<C-u>tabmove -<CR>
nnoremap s} :<C-u>tabmove +<CR>
nnoremap s0 :<C-u>tablast<CR>
nnoremap s1 :<C-u>tabnext1<CR>
nnoremap s2 :<C-u>tabnext2<CR>
nnoremap s3 :<C-u>tabnext3<CR>
nnoremap s4 :<C-u>tabnext4<CR>
nnoremap s5 :<C-u>tabnext5<CR>
nnoremap s6 :<C-u>tabnext6<CR>
nnoremap s7 :<C-u>tabnext7<CR>
nnoremap s8 :<C-u>tabnext8<CR>
nnoremap s9 :<C-u>tabnext9<CR>
" To command mode
nnoremap <Leader>w :<C-u>w<CR>
nnoremap <Leader>; :
nnoremap s; <C-w>:
nnoremap s: <C-w>:
nnoremap sx :<C-u>!<Space>
nnoremap sX :<C-u>read!<Space>
" nnoremap s_     :<C-u>hide<CR>

" Write
nnoremap sw :<C-u>w<CR>
nnoremap sW :<C-w>wq<CR>

" Quit/Close
nnoremap sq :<C-u>quit<CR>
nnoremap sQ :<C-u>quit!<CR>
nnoremap sc :<C-u>close<CR>
nnoremap sC :<C-u>close!<CR>
nnoremap so :<C-u>only<CR>

" Buffer
nnoremap sb :<C-w>buffer<Space>
nnoremap sB :<C-w>ls<CR>
nnoremap s. :<C-w>bnext<CR>
nnoremap s, :<C-w>bprev<CR>

" Clipboards
nnoremap sa :<C-u>append!<CR>
nnoremap si :<C-u>insert!<CR>
" Yank/Cut/Paste
nmap Y     "+y
nnoremap YY    "+yy
nnoremap sy    "+y
nnoremap sd    "+d
nnoremap sp    "+gp
nnoremap sP    "+gP
vmap <Leader>y "+y
vmap Y "+y
vmap <Leader>d "+d
vmap <Leader>p "+gp
vmap <Leader>P "+gP

" Other commands
nnoremap s/ :<C-u>%s///cg<Left><Left><Left><Left>
nnoremap sr :<C-u>read!<Space>
nnoremap sT :<C-u>terminal<CR>
nnoremap sN :<C-u>setlocal relativenumber!<CR>
nnoremap s? :<C-u>help<Space>
nnoremap sf :<C-u>set filetype=

" Vimrc
nnoremap sR :<C-u>source $MYVIMRC<CR>
nnoremap sV :<C-u>edit $MYVIMRC<CR>

" Split
nnoremap sS :<C-u>split<CR>
nnoremap sv :<C-u>vsplit<CR>

" Scroll
nnoremap J <C-e><C-e>
nnoremap K <C-y><C-y>
nnoremap <Down> <C-e><C-e>
nnoremap <Up> <C-y><C-y>
" nnoremap <C-u> <C-y><C-y><C-y><C-y>
" nnoremap <C-d> <C-e><C-e><C-e><C-e>
set scrolloff=5

" EX mode(Q) <-> Format the lines(gq)
nnoremap Q gq
nnoremap gQ Q
" }}}

" Indent --------------------------------- {{{
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set list listchars=tab:\|\_,trail:￫,eol:↲,extends:»,precedes:«,nbsp:%
" }}}

" Number --------------------------------- {{{
set number
set norelativenumber
" }}}

" Search --------------------------------- {{{
set incsearch
" set smartcase
set ignorecase
set hlsearch
" Toggle highlight search
nnoremap <Esc><Esc> :<C-u>set nohlsearch!<CR>
" Redraw console and toggle highlight search
nnoremap <C-l>       <C-l>:<C-u>set nohlsearch!<CR>
" }}}

" Appearance----------------------------- {{{
set nocursorcolumn
set cursorline
" Always show tabline
set showtabline=2
" Empty space at the bottom at gVim
" }}}

" Command Mode -------------------------- {{{
set wildmenu

" Emacs/readline like bindings
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <C-d> <Del>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
" }}}

" Visual Mode -------------------------- {{{
" vv -> visual select to line end
vnoremap v $h
vnoremap > >gv
vnoremap < <gv
" }}}

" Help ----------------------------------- {{{
cabbrev help tab help 
" {{{

" Terminal ------------------------------- {{{
tnoremap <silent> <Esc><Esc> <C-\><C-n>
tnoremap <silent> <C-;>  <C-\><C-n>
" }}}

" Dein Scripts ======================================================== {{{
if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.cache/dein')
    call dein#begin('$HOME/.cache/dein')

    " Let dein manage dein
    " Required:
    call dein#add('$HOME/.cache/dein/repos/github.com/Shougo/dein.vim')

    " Add or remove your plugins here: =====================================
    " {{{

    " Colorscheme
    call dein#add('cocopon/iceberg.vim')
    call dein#add('arcticicestudio/nord-vim')
    call dein#add('altercation/vim-colors-solarized')
    call dein#add('fcpg/vim-orbital')
    call dein#add('morhetz/gruvbox')

    " Color preview
    call dein#add('gorodinskiy/vim-coloresque')

    " Status Line
    call dein#add('itchyny/lightline.vim')
    call dein#add('gkeep/iceberg-dark')

    " Text Edit
    call dein#add('tpope/vim-surround')

    " Interface
    call dein#add('Shougo/unite.vim') 
    " call dein#add('junegunn/fzf.vim')
    call dein#add('ctrlpvim/ctrlp.vim')

    " File Manager
    call dein#add('preservim/nerdtree')

    " i3-wm
    call dein#add('mboughaba/i3config.vim')

    " Python
    call dein#add('davidhalter/jedi-vim')

    " }}}
    " ======================================================================

    " You can specify revision/branch/tag.
    call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

    " Required:
    call dein#end()
    call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
    call dein#install()
endif

" End Dein Scripts ========================================================
" }}}

" Dein ----------------------------------- {{{
cabbrev dinstall  call dein#install()
cabbrev dupdate   call dein#update()
" }}}

" Lightline ------------------------------ {{{
set laststatus=2
set noshowmode
let g:lightline = {
            \ 'colorscheme': 'icebergDark',
            \ 'component': {
            \   'lineinfo': ' %3l:%-2v',
            \ },
            \ 'component_function': {
            \   'readonly': 'LightlineReadonly',
            \   'fugitive': 'LightlineFugitive'
            \ },
            \ 'separator': { 'left': '', 'right': '' },
            \ 'subseparator': { 'left': '', 'right': '' }
            \ }

function! LightlineReadonly()
    return &readonly ? '' : ''
endfunction

function! LightlineFugitive()
    if exists('*FugitiveHead')
        let branch = FugitiveHead()
        return branch !=# '' ? ''.branch : ''
    endif
    return ''
endfunction

" }}}

" Appearance ----------------------------- {{{

" Colorsceme
colorscheme iceberg
set background=dark

if has('gui_running')
    " Fullscreen
    "autocmd GUIEnter * simalt ~x

    " Hide GUI elements
    set guioptions-=T
    set guioptions-=l
    set guioptions-=r
    set guioptions-=L
    set guioptions-=R
    set guioptions-=m
    set guioptions-=e

    " Window size
    set lines=40
    set columns=150

    " GUI fonts
    if has('win32') || has('win64')
        set guifont=HackGen\ Console\ for\ Powerline:h12:cDEFAULT
    elseif has('unix')
        set guifont=HackGenNerd\ 10
        set guifontwide=HackGenNerd\ 10
    endif

    " set ambiwidth=double

    set cursorline
    set guiheadroom=0
else
    colorscheme iceberg
    " autocmd ColorScheme * highlight Normal ctermbg=none
    " autocmd ColorScheme * highlight LineNr ctermbg=none
endif
" }}}

" NERDTree --------------------------------- {{{
nnoremap <Leader>t :<C-u>NERDTreeToggle<CR>
" }}}

" Unite ------------------------------------ {{{
" TODO: fix more good keybindings
nnoremap <Leader>b        :<C-u>Unite<Space>buffer<CR>
nnoremap <Leader>c        :<C-u>Unite<Space>command<CR>
nnoremap <Leader>d        :<C-u>Unite<Space>dein<CR>
nnoremap <Leader>ff       :<C-u>Unite<Space>file<CR>
nnoremap <Leader>fn       :<C-u>Unite<Space>file/new<CR>
nnoremap <Leader>j        :<C-u>Unite<Space>jump<CR>
nnoremap <Leader>l        :<C-u>Unite<Space>launcher<CR>
nnoremap <Leader>r        :<C-u>Unite<Space>register<CR>
nnoremap <Leader>s        :<C-u>Unite<Space>source<CR>
" }}}
"
" i3-config.vim ------------------------------ {{{
augroup i3config_ft_detection
    autocmd!
    autocmd BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
augroup end
" }}}

" Rofi config file syntax
autocmd BufNewFile,BufRead /*.rasi setfiletype css

" End of Vimrc ///////////////////////////////////////////////////////////

