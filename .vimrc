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

" Aliases
command W w
command V e ~/.vimrc

" Remaps
nnoremap ;o o<Enter><Esc>ki
nnoremap ;O O<Enter><Enter><Esc>ki
nnoremap <C-p> :vertical resize +10<CR>
nnoremap <C-u> :vertical resize -10<CR>

nnoremap <S-tab> :bN<CR>
nnoremap <S-q> :bn<CR>
inoremap <C-A> <C-Space>
nnoremap <S-j> <C-d> 
nnoremap <S-k> <C-u> 
nnoremap cw ciw
nnoremap <S-u> :join<CR>
nnoremap <C-w> :w<CR>
nnoremap <C-q> :q<CR>
" nnoremap <C-q> :FSHere<CR>

vnoremap w vbve
vnoremap p "_dP

nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>

let g:user_emmet_leader_key='<C-e>'
let g:ctrlp_map = '<C-o>'
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

