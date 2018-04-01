
" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "mycolors"

highlight MatchParen term=none ctermbg=235 ctermfg=12
highlight Cursor ctermbg=006
highlight StatusLine ctermbg=234 ctermfg=255 cterm=none
highlight CursorLine ctermbg=0 cterm=none
highlight Visual ctermbg=238 
" vim: sw=2
