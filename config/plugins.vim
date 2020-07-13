set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
  "THEMES-------------------- 
      Plugin 'christianchiarulli/onedark.vim'
      Plugin 'robaboyd/alphatheme'
      Plugin 'dracula/vim'
      Plugin 'cocopon/iceberg.vim'
      Plugin 'cseelus/vim-colors-lucid'
      Plugin 'morhetz/gruvbox'
      Plugin 'drewtempelmeyer/palenight.vim'
  "GIT-------------------- 
     Plugin 'tpope/vim-fugitive'
  "NerdTree
      Plugin 'scrooloose/nerdtree'
  "emmet
      Plugin 'mattn/emmet-vim.git'
  " lightline	
      Plugin 'itchyny/lightline.vim' 
  " Surround
      Plugin 'tpope/vim-surround'
  " Multiple Cursors
      Plugin 'terryma/vim-multiple-cursors'
  " Code Completion
      Plugin 'neoclide/coc.nvim', {'branch': 'release'}
  " Prettier
      "Plugin 'prettier/vim-prettier'
  " Auto Pairs
      Plugin 'jiangmiao/auto-pairs'
  " Commenting
      Plugin 'scrooloose/nerdcommenter'
  " Typescript
    Plugin 'leafgarland/typescript-vim'
    Plugin 'peitalin/vim-jsx-typescript',
  " Vinegar
    Plugin 'tpope/vim-vinegar'
    Plugin 'xolox/vim-session'
    Plugin 'xolox/vim-misc'
  " FZF
    Plugin 'junegunn/fzf'
    Plugin 'junegunn/fzf.vim'
    Plugin 'mhinz/vim-startify'
    Plugin 'easymotion/vim-easymotion'
  " Which key
    Plugin 'liuchengxu/vim-which-key' 
  " Git
    Plugin 'itchyny/vim-gitbranch'
    Plugin 'https://github.com/airblade/vim-gitgutter'
  " Goyo
    Plugin 'junegunn/goyo.vim'
  " org 
    Plugin 'jceb/vim-orgmode'
  " folding
    Plugin 'tmhedberg/SimpylFold'
  " Indent line
    Plugin 'Yggdroot/indentLine'
  " color template
    Plugin 'lifepillar/vim-colortemplate'
  " Window resize 
    Plugin 'camspiers/lens.vim'
  " CtrlSF
    Plugin 'dyng/ctrlsf.vim' 
  " quickscope
    Plugin 'unblevable/quick-scope' 
   " Float term
   Plugin 'voldikss/vim-floaterm'
   "VIFM
   Plugin 'vifm/vifm.vim'
   " Wiki
   Plugin 'vimwiki/vimwiki'
   call vundle#end()
