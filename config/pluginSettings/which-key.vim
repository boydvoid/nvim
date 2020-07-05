" Map Leader to WhichKey
  nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

  " Create map to add keys
  let g:which_key_map = {}
  let g:which_key_sep = '->'

  " Window Mappings
  let g:which_key_map.w = {
      \ 'name' : '+windows' ,
      \ 'c' : ['<Space>w'     , 'Center window']          ,
      \ 'd' : ['<Space>wd'     , 'Delete Window']     ,
      \ 'h' : ['<Space>wh'     , 'Move to Left Split']    ,
      \ 'j' : ['<Space>wj'     , 'Move to Bottom Split']  ,
      \ 'l' : ['<Space>wl'     , 'Move to Right Split']   ,
      \ 'k' : ['<Space>wk'     , 'Move to Top Split']     ,
      \ } 

  let g:which_key_map.w.s = {
      \ 'name' : '+split' ,
      \ 'h' : ['<Space>wsh'     , 'Split Horizontal']     ,
      \ 'v' : ['<Space>wsv'     , 'Split Vertical']     ,
      \ } 

  let g:which_key_map.w.r = {
      \ 'name' : '+resize' ,
      \ 'e' : ['<Space>wre'     , 'Resize Equal']     ,
      \ 'v' : ['<Space>wrv'     , 'Resize Vertical']     ,
      \ 'h' : ['<Space>wrh'     , 'Resize Horizontal']     ,
      \ } 
  
  " Comment Mappings
  let g:which_key_map.c = {
      \ 'name' : '+comments' ,
      \ 'SPC' : ['<Space>c<Space>', 'Toggle Comment'] ,
      \ '$' : ['<Space>c$', 'Comment to end of the line'] ,
      \ 'A' : ['<Space>cA', 'Comment Append'] , 
      \ 'y' : ['<Space>cy', 'Yank and comment out'] , 
      \ } 


  " Comment Mappings
  let g:which_key_map.r = {
      \ 'name' : '+reload' ,
      \ 'v' : ['<Space>rv', 'Reload Vim'] ,
      \ } 

  " Terminal Mappings
  let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ 't' : ['<Space>tt', 'Show Terminal'] ,
      \ 'r' : ['<Space>trw', 'Ranger commands'] ,
      \ } 

  let g:which_key_map.t.r = {
      \ 'name' : '+ranger' ,
      \ 'w' : ['<Space>trw', 'Ranger in window'] ,
      \ 'v' : ['<Space>trv', 'Ranger vertical split'] ,
      \ 'h' : ['<Space>trh', 'Ranger horizontal split'] ,
      \ } 
  " Open init.vim
  let g:which_key_map.v = {
      \ 'name' : '+Open init.vim' ,
      \ } 

  " Save
  let g:which_key_map['s'] = [':w', 'Save']


  call which_key#register('<Space>', "g:which_key_map")

  let g:which_key_use_floating_win = 0                    " Disable 0 floating window or enable 1
  let g:which_key_position = 'botright'
