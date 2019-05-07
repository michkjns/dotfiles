" =============================================================================   " 
" ================================ Load Plugins  ==============================
if has('win32')
	call plug#begin('~/AppData/Local/nvim/plugins')
else
	call plug#begin('~/.config/nvim/plug')
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	Plug 'z0mbix/vim-shfmt', {'for': 'sh'}
	"Plug 'Valloric/YouCompleteMe'
endif
Plug 'wellle/targets.vim'
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
Plug 'junegunn/fzf.vim'
call plug#end()

" =============================================================================
" ================================ General Settings ===========================
" set autochdir
set autoindent
set diffopt+=vertical
set clipboard+=unnamedplus
set cursorline
set inccommand=nosplit
set list
set nocompatible
set number
set relativenumber
set shiftwidth=4
set tabstop=4
set backspace=indent,eol,start
set wildmenu
set wildmode=longest:full,full
set mouse=a

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

"autocmd InsertEnter * :call ToggleCurLine()
hi CursorLine   cterm=NONE ctermbg=237

autocmd DirChanged global Explore <afile>

" =============================================================================
" ================================ Aliases ====================================
command! Config e $MYVIMRC
command! W write

" =============================================================================
" ================================ Remappings =================================
" Edit vim config in new split
nnoremap <silent> <leader>ec :vs $MYVIMRC<CR>

nnoremap gb :ls<CR>:b<space>
nnoremap ;o o<Enter><Esc>ki
nnoremap ;O O<Enter><Enter><Esc>ki
nnoremap [v :vertical resize +10<CR>
nnoremap ]v :vertical resize -10<CR>

nnoremap ;so :so %<CR>
nnoremap ;;q :q!<CR>
nnoremap ;r  <C-w>R
nnoremap ;E  :Explore<CR>
nnoremap ;f  :find<space>
nnoremap ;F  :vert sf<space>
nnoremap ;q  :q<CR>
nnoremap ;w  :w<CR>
nnoremap ;cd :cd %:p:h<CR>:echo expand('%:p:h')<CR>

nnoremap ;e  :e<space>
nnoremap ;v  :v<space>
nnoremap ;t  :tabe<space>
nnoremap ,e :e <C-R>=expand('%:p:h') . "/"<CR>
nnoremap ,v :vs <C-R>=expand('%:p:h') . "/"<CR>
nnoremap ,t :tabe <C-R>=expand('%:p:h') . "/"<CR>

" Vimgrep next / previous result
nnoremap [q :cprev<CR>
nnoremap ]q :cnext<CR>
nnoremap [Q :cprev<CR>
nnoremap ]Q :cnext<CR>

" Cycle buffers
nnoremap <S-q> :bN<CR>
nnoremap <S-w> :bn<CR>

" Cycle tabs
nnoremap H gt
nnoremap L gT

" Page Scrolling
nnoremap <S-j> <C-d>
nnoremap <S-k> <C-u>

nnoremap <S-u> :join<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-q><C-q> :q!<CR>

" Don't yank when pasting
vnoremap p "_dP

" Move between splits
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>

" fugitive
nnoremap ;gs :Gstatus<CR><C-w>T
nnoremap ;gd :Gdiff<CR>

nnoremap <C-p> :Lexplore<CR>

" == Terminal mode ==
nnoremap <Leader>] :botright new<CR>:term<CR>i
tnoremap <Esc> <C-\><C-n>

" =============================================================================
" ================================ Plugins ====================================
" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'gruvbox'

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPBuffer'

" Easymotion
nmap fw <Plug>(easymotion-overwin-w)
nmap g/ <Plug>(incsearch-easymotion-/)
"noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))

" jedi
let g:jedi#completions_command = "<C-Space>"
let g:jedi#documentation_command = "gd"

" netrw
let g:netrw_banner=0         " hide banner
let g:netrw_liststyle=3      " tree view
"let g:netrw_browse_split=4   "  

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

autocmd FileType python set makeprg=pylint\ --reports=n\ --msg-template=\"{path}:{line}:\ {msg_id}\ {symbol},\ {obj}\ {msg}\"\ %:p
autocmd FileType python set errorformat=%f:%l:\ %m
