" Functions
  "open our vimrc 
	function! OpenVimrc()
		tabnew ~/.config/nvim/init.vim
	endfunction

function! CreateCenteredFloatingWindow()
    let width = min([&columns - 4, max([80, &columns - 20])])
    let height = min([&lines - 4, max([20, &lines - 10])])
    let top = ((&lines - height) / 2) - 1
    let left = (&columns - width) / 2
    let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

    let top = "╭" . repeat("─", width - 2) . "╮"
    let mid = "│" . repeat(" ", width - 2) . "│"
    let bot = "╰" . repeat("─", width - 2) . "╯"
    let lines = [top] + repeat([mid], height - 2) + [bot]
    let s:buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
    call nvim_open_win(s:buf, v:true, opts)
    set winhl=Normal:Floating
    let opts.row += 1
    let opts.height -= 2
    let opts.col += 2
    let opts.width -= 4
    call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
    au BufWipeout <buffer> exe 'bw '.s:buf
endfunction

let g:fzf_layout = { 'window': 'call CreateCenteredFloatingWindow()' }

" Open new split then term

function! VsplitTerm()
  execute ':vsplit'
  execute ':FloatermNew ranger'
endfunction

function! HsplitTerm()
  execute ':split'
  execute ':FloatermNew ranger'
endfunction

"function! Toggle_transparent()
    "if t:is_transparent == 0
        "let t:is_transparent = 1
    "else
        "set background=dark
        "let t:is_tranparent = 0
    "endif
"endfunction
"nnoremap <C-t> : call Toggle_transparent()<CR>
