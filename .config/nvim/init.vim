" =============================================================================
" ================================ Load Plugins  ==============================
if has('win32')
	call plug#begin('~/AppData/Local/nvim/plugins')
else
	call plug#begin('~/.config/nvim/plug')
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	Plug 'Valloric/YouCompleteMe'
endif
Plug 'wellle/targets.vim'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'davidhalter/jedi-vim'
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'kaicataldo/material.vim'
Plug 'lifepillar/pgsql.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'morhetz/gruvbox'
Plug 'qpkorr/vim-renamer'
Plug 'srcery-colors/srcery-vim'
Plug 'thaerkh/vim-indentguides'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
call plug#end()

" =============================================================================
" ================================ General Settings ===========================
" set autochdir
set autoindent
set clipboard+=unnamedplus
set inccommand=nosplit
set list
set nocompatible
set number
set path+=**
set relativenumber
set shiftwidth=4
set tabstop=4
set backspace=indent,eol,start
set wildmenu
filetype plugin on

"" == Colors and Syntax ==
colorscheme gruvbox
set background=dark
set colorcolumn=80
set termguicolors
syntax on

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

" =============================================================================
" ================================ Aliases ====================================
command! Config e $MYVIMRC
command! W write
command! E e

" =============================================================================
" ================================ Remappings =================================
" Edit vim config in new split
nnoremap <silent> <leader>ec :vs $MYVIMRC<CR>

nnoremap ;o o<Enter><Esc>ki
nnoremap ;O O<Enter><Enter><Esc>ki
nnoremap [v :vertical resize +10<CR>
nnoremap ]v :vertical resize -10<CR>

" Vimgrep next / previous result
nnoremap [q :cprev<CR>
nnoremap ]q :cnext<CR>
nnoremap [Q :cprev<CR>
nnoremap ]Q :cnext<CR>

" Cycle buffers
nnoremap <S-tab> :bN<CR>
nnoremap <S-q>   :bn<CR>

" Page Scrolling
nnoremap <S-j> <C-d>
nnoremap <S-k> <C-u>

nnoremap <S-u> :join<CR>
nnoremap <C-w> :w<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-q><C-q> :q!<CR>

" Nearest pair
"nnoremap ci" f"ci"
" nnoremap ci) f)ci)
" nnoremap ci( f)ci(
" nnoremap ci{ f}ci{
" nnoremap ci} f}ci}
" nnoremap vi" f"vi"
" nnoremap vi) f)vi)
" nnoremap vi( f)vi(
" nnoremap vi{ f)vi{
" nnoremap vi} f)vi}

" Don't yank when pasting
vnoremap p "_dP

" Move between splits
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>

" fugitive
nnoremap <leader>gs :Gstatus<CR>

" don't remember
"inoremap <C-A> <C-Space>

" == Terminal mode ==
nnoremap <Leader>] :botright new<CR>:term<CR>i
tnoremap <Esc> <C-\><C-n>

" =============================================================================
" ================================ Plugins ====================================
" Airline
let g:airline#extensions#tabline#enabled = 1

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPBuffer'

" Easymotion
nmap fw <Plug>(easymotion-overwin-w)
nmap / <Plug>(incsearch-easymotion-/)

" jedi
let g:jedi#completions_command = "<C-Space>"
let g:jedi#documentation_command = "gd"

" netrw
let g:netrw_banner=0    " hide banner
let g:netrw_liststyle=3 " tree view
let g:netrw_browse_split=4

" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_def_mapping_enabled = 1
let g:go_doc_keywordprg_enabled = 0

" YouCompleteMe
let g:ycm_confirm_extra_conf = 0

" == Other ==
" https://github.com/neovim/neovim/issues/7000
if has('win32') 
	let $PATH=$PATH.';C:\Neovim\bin'
endif
