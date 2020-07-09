" Map Leader to WhichKey
  nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

  " Create map to add keys
  let g:which_key_map = {}
  let g:which_key_sep = '->'

  " Window Mappings
  let g:which_key_map.p = {
      \ 'name' : '+panes' ,
      \ 'c' : [':Goyo'     , 'Center window']          ,
      \ 'd' : [':q!'     , 'Delete Window without saving']     ,
      \ 'h' : ['<C-w>h'     , 'Move to Left Split']    ,
      \ 'j' : ['<C-w>j'     , 'Move to Bottom Split']  ,
      \ 'l' : ['<C-w>l'     , 'Move to Right Split']   ,
      \ 'k' : ['<C-w>k'     , 'Move to Top Split']     ,
      \ } 

  let g:which_key_map.p.s = {
      \ 'name' : '+split' ,
      \ 'h' : [':sp'     , 'Split Horizontal']     ,
      \ 'v' : [':vs'     , 'Split Vertical']     ,
      \ } 

  let g:which_key_map.p.r = {
      \ 'name' : '+resize' ,
      \ 'e' : ['<C-w>='     , 'Resize Equal']     ,
      \ 'v' : [':vertical resize +50'     , 'Resize Vertical']     ,
      \ 'h' : ['<C-w>_'     , 'Resize Horizontal']     ,
      \ } 
  
  " Comment Mappings
  let g:which_key_map.c = {
      \ 'name' : '+comments' ,
      \ 'SPC' : [':NERDCommenterToggle', 'Toggle Comment'] ,
      \ '$' : ['<Space>c$', 'Comment to end of the line'] ,
      \ 'A' : ['<Space>cA', 'Comment Append'] , 
      \ 'y' : ['<Space>cy', 'Yank and comment out'] , 
      \ } 

  " Git Mappings
  let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 's' : [':G', 'Git Status'] ,
      \ 'h' : [':diffget //3', 'Diff Get 3'] ,
      \ 'u' : [':diffget //2', 'Diff Get 2'] ,
      \ } 

  " Comment Mappings
  let g:which_key_map.v = {
      \ 'name' : '+vim' ,
      \ 'r' : [':source $MYVIMRC', 'Reload Vim'] ,
      \ 'i' : [':call OpenVimrc()', 'Open Vimrc'] ,
      \ } 

  " Terminal Mappings
  let g:which_key_map.t = {
      \ 'name' : '+tabs' ,
      \ 'h' : [':tabfirst', 'Tab First'] ,
      \ 'j' : [':tabprev', 'Tab Prev'] ,
      \ 'k' : [':tabnext', 'Tab Next'] ,
      \ 'l' : [':tablast', 'Tab Last'] ,
      \ 'n' : [':tabnew', 'Tab New'] ,
      \ } 

  let g:which_key_map.r = {
      \ 'name' : '+ranger' ,
      \ 't' : [':FloatermToggle', 'Terminal'] ,
      \ 'v' : [':call VsplitTerm()', 'Ranger vertical split'] ,
      \ 'h' : [':call HsplitTerm()', 'Ranger horizontal split'] ,
      \ 'r' : [':FloatermNew ranger', 'Ranger in Window'] ,
      \ } 

  " Save
  let g:which_key_map['s'] = [':w', 'Save']


  call which_key#register('<Space>', "g:which_key_map")

  let g:which_key_use_floating_win = 0                    " Disable 0 floating window or enable 1
  let g:which_key_position = 'botright'
