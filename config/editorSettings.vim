
set nocompatible
filetype off  
let g:python3_host_prog = expand('/usr/bin/python3')

let &t_8f = "\[38;2;%lu;%lu;%lum"
let &t_8b = "\[48;2;%lu;%lu;%lum"

let mapleader=" " 

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set noswapfile                    " Disable the swap file
set nu                            " line numbers
set rnu                           " Relative Line Numbers
set termguicolors                 " Gui Colors if its supported
set nohlsearch                    " Stop the highlighting for the search option
set ignorecase                    " Ignore letter casing when searching
set encoding=UTF-8                " UTF-8 encoding
set laststatus=2                  " Always have a status line
set expandtab                     " Appropriate number of spaces to insert a Tab
set tabstop=2                     " Length of Tab
set softtabstop=2                 " Number of spaces that a Tab counts for while editing
set shiftwidth=2 
set background=dark
set nowrap
set selection=inclusive
set autoindent
set noswapfile
set smartindent
set timeoutlen=300
set mouse=a
set cursorline

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

" show friendly cat on load
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
