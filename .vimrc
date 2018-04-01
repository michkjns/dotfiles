" Executions 
execute pathogen#infect()

" General Settings
syntax on
set relativenumber
set number
set tabstop=4
set shiftwidth=4
set clipboard=unnamedplus
set autoindent
set autochdir
set laststatus=2

set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/emmet-vim

" Colors
colorscheme mycolors


fu! ToggleCurLine ()
	if &cursorline
		set nocursorline
	else
		set cursorline
	endif
endfunction

autocmd InsertEnter * :call ToggleCurLine()
autocmd InsertLeave * :call ToggleCurLine()

" Remaps
nnoremap ;o o<Enter><Esc>ki
nnoremap ;O O<Enter><Enter><Esc>ki

inoremap <C-Space> <C-x><C-o>
inoremap <C-A> <C-Space>

inoremap <C-F10> :call SyntaxAttr()<CR>
let g:user_emmet_leader_key='<C-L>'
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
nnoremap <C-a> :FSHere<CR>

nnoremap <S-j> <C-d> 
nnoremap <S-k> <C-u> 
nnoremap <C-j> :join<CR>


" vim-go
let g:go_highlight_functions=1
let g:go_highlight_methods=1
let g:go_highlight_function_calls=1

" let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
filetype plugin indent on

