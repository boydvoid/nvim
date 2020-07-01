" Map Leader to WhichKey
  nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

  " Create map to add keys
  let g:which_key_map = {}
  let g:which_key_sep = '->'

  let g:which_key_map.w = {
      \ 'name' : '+windows' ,
      \ 'c' : ['<Space>w'     , 'Center window']          ,
      \ 'd' : ['<Space>wd'     , 'Force Quit Window']     ,
      \ 'h' : ['<Space>wh'     , 'Move to Left Split']    ,
      \ 'j' : ['<Space>wj'     , 'Move to Bottom Split']  ,
      \ 'l' : ['<Space>wl'     , 'Move to Right Split']   ,
      \ 'k' : ['<Space>wk'     , 'Move to Top Split']     ,
      \ } 

  
  let g:which_key_map.c = {
      \ 'name' : '+comments' ,
      \ 'SPC' : ['<Space>c<Space>', 'Toggle Comment'] ,
      \ '$' : ['<Space>c$', 'Comment to end of the line'] ,
      \ 'A' : ['<Space>cA', 'Comment Append'] , 
      \ } 

  call which_key#register('<Space>', "g:which_key_map")
