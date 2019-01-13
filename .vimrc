set shell=/bin/bash
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

syntax on
set relativenumber
set number
set tabstop=4
set shiftwidth=4
set clipboard=unnamedplus
set autoindent
set autochdir
set laststatus=2
set splitright

colorscheme mycolors

" CursorLine
function ToggleCurLine()
	if &cursorline
		set nocursorline
	else
		set cursorline
	endif
endfunction

autocmd InsertEnter * :call ToggleCurLine()
autocmd InsertLeave * :call ToggleCurLine()
 
" Aliases
command W w
command V e ~/.vimrc

" Remaps
nnoremap ;o o<Enter><Esc>ki
nnoremap ;O O<Enter><Enter><Esc>ki
nnoremap <C-[> :vertical resize +10<CR>
nnoremap <C-]> :vertical resize -10<CR>

nnoremap <S-tab> :bN<CR>
nnoremap <S-q> :bn<CR>
inoremap <C-A> <C-Space>
nnoremap <S-j> <C-d> 
nnoremap <S-k> <C-u> 
nnoremap cw ciw
nnoremap <S-u> :join<CR>
nnoremap <C-w> :w<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-q><C-q> :q!<CR>

" nnoremap <C-q> :FSHere<CR>

vnoremap p "_dP

nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>

let g:ctrlp_map = '<C-o>'
let g:ctrlp_cmd = 'CtrlP'

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
