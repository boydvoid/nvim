lua << EOF
	require('init')
EOF

" set noswapfile                    " Disable the swap file
" set nu                            " line numbers
" set rnu                           " Relative Line Numbers
" set termguicolors                 " Gui Colors if its supported
" set nohlsearch                    " Stop the highlighting for the search option
" set ignorecase                    " Ignore letter casing when searching
" set encoding=UTF-8                " UTF-8 encoding
" set laststatus=2                  " Always have a status line
" set expandtab                     " Appropriate number of spaces to insert a Tab
" set tabstop=2                     " Length of Tab
" set softtabstop=2                 " Number of spaces that a Tab counts for while editing
" set shiftwidth=2 
" set background=dark
" set nowrap                        " No text wrapping
" set selection=inclusive           
" set autoindent
" set noswapfile
" set smartindent
" set updatetime=300
" set timeoutlen=300
" set mouse=a                       " Enable mouse support
" set cursorline
" set scrolloff=8
" set noautochdir
" set clipboard=unnamed
" set formatoptions=cro
" 
" syntax on


autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.tsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync(nil, 100)

