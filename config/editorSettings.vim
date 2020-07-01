
set nocompatible
filetype off  
let g:python3_host_prog = expand('/usr/bin/python3')

let &t_8f = "\[38;2;%lu;%lu;%lum"
let &t_8b = "\[48;2;%lu;%lu;%lum"

let mapleader=" " 

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set noswapfile
set nu
set rnu
set termguicolors
set nohlsearch
set ignorecase
set encoding=UTF-8
set laststatus=2
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set background=dark
set nowrap
set selection=inclusive
set autoindent
set noswapfile
set smartindent
set timeoutlen=500


set background=dark
colorscheme onedark
syntax on

" Enable folding
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

" autocomplete
  set wildmode=longest,list,full

filetype plugin indent on

" show friendvy cat on load
autocmd VimEnter * echo ">^.^<"

if exists('g:GuiLoaded')

GuiTabline 0

GuiPopupmenu 0

GuiFont! JetBrains Mono:h11

endif

"Change insert character for iterm2
" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
