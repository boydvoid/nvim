" /$$$$$$$            /$$       /$$                 /$$                 /$$    /$$ /$$                                  
"| $$__  $$          | $$      | $$                | $/                | $$   | $$|__/                                  
"| $$  \ $$  /$$$$$$ | $$$$$$$ | $$$$$$$  /$$   /$$|_/   /$$$$$$$      | $$   | $$ /$$ /$$$$$$/$$$$   /$$$$$$   /$$$$$$$
"| $$$$$$$  /$$__  $$| $$__  $$| $$__  $$| $$  | $$     /$$_____/      |  $$ / $$/| $$| $$_  $$_  $$ /$$__  $$ /$$_____/
"| $$__  $$| $$  \ $$| $$  \ $$| $$  \ $$| $$  | $$    |  $$$$$$        \  $$ $$/ | $$| $$ \ $$ \ $$| $$  \__/| $$      
"| $$  \ $$| $$  | $$| $$  | $$| $$  | $$| $$  | $$     \____  $$        \  $$$/  | $$| $$ | $$ | $$| $$      | $$      
"| $$$$$$$/|  $$$$$$/| $$$$$$$/| $$$$$$$/|  $$$$$$$     /$$$$$$$/         \  $/   | $$| $$ | $$ | $$| $$      |  $$$$$$$
"|_______/  \______/ |_______/ |_______/  \____  $$    |_______/           \_/    |__/|__/ |__/ |__/|__/       \_______/
"                                         /$$  | $$                                                                     
"                                        |  $$$$$$/                                                                     
"                                         \______/ 

 "Table of Contents
 "1. File Sources

" Source all of our files 
  source $HOME/.config/nvim/config/whick-key.vim
  source $HOME/.config/nvim/config/keybinds.vim
  source $HOME/.config/nvim/config/editor-settings.vim

" WINDOWS VIMRC
set nocompatible 
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set termguicolors
let &t_8f = "\[38;2;%lu;%lu;%lum"
let &t_8b = "\[48;2;%lu;%lu;%lum"
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'morhetz/gruvbox'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/itchyny/lightline.vim.git'
Plugin 'w0rp/ale'
Plugin 'itchyny/vim-gitbranch'
Plugin 'https://github.com/tpope/vim-fugitive'
Plugin 'https://github.com/airblade/vim-gitgutter'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'mattn/emmet-vim'
Plugin 'mhinz/vim-startify'
Plugin 'scrooloose/nerdcommenter'
Plugin 'prettier/vim-prettier', { 'do': 'npm install' }
Plugin 'https://github.com/Raimondi/delimitMate'
Plugin 'junegunn/goyo.vim'
"Plugin 'junegunn/limelight.vim'
Plugin 'jceb/vim-orgmode'
Plugin 'tmhedberg/SimpylFold'
Plugin 'easymotion/vim-easymotion'
Plugin 'jbgutierrez/vim-better-comments'
Plugin 'Yggdroot/indentLine'
Plugin 'robaboyd/alphatheme'
Plugin 'lifepillar/vim-colortemplate'
Plugin 'rakr/vim-one'
Plugin 'arcticicestudio/nord-vim'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'terryma/vim-multiple-cursors'
"Plugin 'camspiers/animate.vim'
Plugin 'camspiers/lens.vim'
Plugin 'jremmen/vim-ripgrep'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'dyng/ctrlsf.vim' 
Plugin 'liuchengxu/vim-which-key' 

call vundle#end()

filetype plugin indent on

" Text editor settings
  set tabstop=4 
  set nowrap
  set expandtab
  set shiftwidth=2
  set rnu
  set nu
  set nohlsearch
  set background=dark
  colorscheme gruvbox 
  set selection=inclusive
  set ignorecase
  set autoindent
  set smartindent
  set laststatus=2
  set noswapfile
  set encoding=UTF-8
  set timeoutlen=500

  "open splits normally
    set splitbelow splitright
  nnoremap <silent> <c-u> :call smooth_scroll#up(&scroll, 3, 7)<CR>
  nnoremap <silent> <c-d> :call smooth_scroll#down(&scroll, 3, 7)<CR>
  nnoremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 3, 7)<CR>
  nnoremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 3, 7)<CR>

  " FZF
  " up a dir
  nnoremap <silent> <leader>up :cd ..<CR>
  nnoremap <silent> <c-p> :Files<CR>
  nnoremap <silent> <leader>b :Buffers<CR>
  nnoremap <leader>fl :BLines<CR>

  "CtrlSF
  nnoremap <leader>fw :CtrlSF
" Key Remap

let mapleader = " " 
imap jf <Esc>

nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>tk :tabnext<cr>
nnoremap <leader>tj :tabprev<cr>
nnoremap <leader>th :tabfirst<cr>
nnoremap <leader>tl :tablast<cr>
nnoremap <leader>s :w<cr>

" bookmarks
nnoremap <leader>bm :Marks<CR>
"more movement keys
	nnoremap H 0
	nnoremap L $
	nnoremap J 5j 
	nnoremap K 5k

"Close
	nnoremap <leader>wd :q!<cr>

"Reload
	nnoremap <leader>rv :source<Space>$MYVIMRC<cr>

"Open vimrc
	nnoremap <leader>vim :tabnew $MYVIMRC<cr>

"splits
	nnoremap <leader>wsv :vs<cr>
	nnoremap <leader>wsh :sp<cr>
	nnoremap <leader>wl <C-w>l<cr>
	nnoremap <leader>wh <C-w>h<cr>
	nnoremap <leader>wj <C-w>j<cr>
	nnoremap <leader>wk <C-w>k<cr>
	"mnemonic window full screen horizontal split
	nnoremap <leader>wrh <C-w>_<cr>
	"mnemonic window resize vertical split
	nnoremap <leader>wrv :vertical resize +50<cr>
	nnoremap <leader>wre <C-w>=<cr>

"move text up 
	nnoremap <A-k> <Up>ddp<Up>
    
"move text down 
	nnoremap <A-j> ddp

"Goyo centering and limelight toggle
 nnoremap <leader>wc :Goyo<cr>
	
" Better Searching
"nnoremap <leader>r :%s//g<Left><Left>

"Folding 
"Enable Folding wit Leader Tab
  nnoremap <leader>fc za :echo 'Close fold'<cr>
  nnoremap <leader>fC zM :echo 'Close all folds'<cr>
  nnoremap <leader>fo zO :echo 'Opened fold'<cr>
  nnoremap <leader>fO zR :echo 'Open all folds'<cr>
  nnoremap <leader>fn zj :echo 'Next fold'<cr>
  nnoremap <leader>fp zk :echo 'Previous fold'<cr>

"Limelight Toggle
  nnoremap <leader>llt :Limelight!!<cr>
" nerdTree
map <leader>ft :NERDTreeToggle<cr>

nnoremap <leader>FT :NERDTree .<cr>

"set autochdir
let nerdtreeshowhidden=1

syntax on

 set noswapfile
  set nobackup

let g:lightline = {
	\ 'active':  {
	\	'left': [ [ 'mode' , 'paste' ],
	\		  [ 'gitbranch', 'readonly', 'relativepath', 'modified']]
	\ },
	\ 'component_function': {
	\ 	'gitbranch': 'fugitive#head'
	\ },
	\ }

imap <expr><tab> emmet#expandAbbrIntelligent("\<tab>")"

let g:startify_custom_header = [
\'  ____        _     _        __      ___           ',
\' |  _ \      | |   | |       \ \    / (_)          ', 
\' | |_) | ___ | |__ | |__  _   \ \  / / _ _ __ ___  ',
\' |  _ < / _ \| |_ \| |_ \| | | \ \/ / | | |_ | _ \ ',
\' | |_) | (_) | |_) | |_) | |_| |\  /  | | | | | | |',
\' |____/ \___/|_.__/|_.__/ \__, | \/   |_|_| |_| |_|',
\'                          __/ |                    ',
\'                         |___/                     ',
\]

let g:startify_bookmarks = [ {'c': 'c:/Users/BOYDRX/Documents/git/Cleaver'},  {'m': 'c:/Users/BOYDRX/Documents/git/Matterhorn'}]


"Goyo and Limelight Together 
  "autocmd! User GoyoEnter Limelight
  "autocmd! User GoyoLeave Limelight!
  "autocmd User GoyoEnter set rnu
  "autocmd! User GoyoLeave set rnu


" Enable folding
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

" autocomplete
  set wildmode=longest,list,full

let g:SimpylFold_docstring_preview = 1

" change font size
  command! Bigger :call rpcnotify(0, 'Gui', 'Font', substitute(g:GuiFont, '\d\+$', '\=submatch(0)+1', ''))
  command! Smaller :call rpcnotify(0, 'Gui', 'Font', substitute(g:GuiFont, '\d\+$', '\=submatch(0)-1', ''))

  nnoremap <silent> <leader>= :Bigger<cr>
  nnoremap <silent> <leader>- :Smaller<cr>

" Disables automatic commenting on newline
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


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


" Animate vim
let g:animate#distribute_space = 0



