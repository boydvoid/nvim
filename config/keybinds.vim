
" Better Tabs
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

imap jf <Esc>
	
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

" change font size
  command! Bigger :call rpcnotify(0, 'Gui', 'Font', substitute(g:GuiFont, '\d\+$', '\=submatch(0)+1', ''))
  command! Smaller :call rpcnotify(0, 'Gui', 'Font', substitute(g:GuiFont, '\d\+$', '\=submatch(0)-1', ''))

  nnoremap <silent> <leader>= :Bigger<cr>
  nnoremap <silent> <leader>- :Smaller<cr>
