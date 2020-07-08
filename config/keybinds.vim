
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
	nnoremap <leader>vr :source<Space>$MYVIMRC<cr>

"Open vimrc
	nnoremap <leader>vi :call OpenVimrc()<cr>

"W key
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
  "nnoremap <leader>llt :Limelight!!<cr>
" nerdTree
map <leader>ft :NERDTreeToggle<cr>
"nnoremap <leader>FT :NERDTree .<cr>
"
" Floaterm
nnoremap <leader>rr :FloatermNew ranger<cr>
nnoremap <leader>rv :call VsplitTerm()<cr>
nnoremap <leader>rh :call HsplitTerm()<cr>
nnoremap <leader>rt :FloatermToggle<cr>


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

  " FZF
  " up a dir
  nnoremap <silent> <leader>up :cd ..<CR>
  nnoremap <silent> <c-p> :GFiles<CR>
  nnoremap <silent> <leader>b :Buffers<CR>
  nnoremap <leader>fl :BLines<CR>

  "CocSearch
  nnoremap <leader>fw :CocSearch

" git 
  nnoremap <leader>gs :G<cr>
  nnoremap <leader>gh :G<cr>
  nnoremap <leader>gu :G<cr>
