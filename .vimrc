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
set completeopt-=preview

colorscheme mycolors

" CursorLine
fu! ToggleCurLine ()
	if &cursorline
		set nocursorline
	else
		set cursorline
	endif
endfunction

colorscheme InsertEnter * :call ToggleCurLine()
colorscheme InsertLeave * :call ToggleCurLine()

" Remaps
nnoremap ;o o<Enter><Esc>ki
nnoremap ;O O<Enter><Enter><Esc>ki

inoremap <C-A> <C-Space>
nnoremap <S-j> <C-d> 
nnoremap <S-k> <C-u> 
nnoremap <S-u> :join<CR>
nnoremap <C-q> :FSHere<CR>

vnoremap w vbve
vnoremap p "_dP

nnoremap <C-h> <C-W><C-h>
nnoremap <C-j> <C-W><C-j>
nnoremap <C-k> <C-W><C-k>
nnoremap <C-l> <C-W><C-l>

let g:user_emmet_leader_key='<C-e>'
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_extensions =  ['line', 'dir']

" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_def_mapping_enabled = 1
let g:go_doc_keywordprg_enabled = 0

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
filetype plugin indent on

