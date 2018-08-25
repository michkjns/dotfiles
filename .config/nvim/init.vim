
" Plugins 
call plug#begin('~/.config/nvim/plug')
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'godlygeek/tabular'
Plug 'blueyed/vim-diminactive'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'qpkorr/vim-renamer'
call plug#end()

filetype plugin indent on " required

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
set completeopt-=preview
set wildmenu

colorscheme mycolors

" CursorLine
function! ToggleCurLine ()
	if &cursorline
		set nocursorline
	else
		set cursorline
	endif
endfunction

autocmd InsertEnter * :call ToggleCurLine()
autocmd InsertLeave * :call ToggleCurLine()

" Aliases
command! Config e "~/.config/nvim/init.vim"

" Remaps
nnoremap ;o o<Enter><Esc>ki
nnoremap ;O O<Enter><Enter><Esc>ki
nnoremap [v :vertical resize +10<CR>
nnoremap ]v :vertical resize -10<CR>

nnoremap <S-tab> :bN<CR>
nnoremap <S-q>   :bn<CR>
inoremap <C-A> <C-Space>
nnoremap <S-j> <C-d> 
nnoremap <S-k> <C-u> 
nnoremap <S-u> :join<CR>
nnoremap <C-w> :w<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-q><C-q> :q!<CR>
nnoremap <C-p> :vs **/*
nnoremap <C-o> :e **/*
nmap fw <Plug>(easymotion-overwin-w)
nmap / <Plug>(incsearch-easymotion-/)
" nnoremap <C-q> :FSHere<CR>

vnoremap p "_dP

nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>

"" Plugins
" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_def_mapping_enabled = 1
let g:go_doc_keywordprg_enabled = 0

" YouCompleteMe
let g:ycm_confirm_extra_conf = 0
