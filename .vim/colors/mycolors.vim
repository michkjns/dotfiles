
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

highlight Cursor ctermbg=006
highlight CursorLine ctermbg=0 cterm=none
highlight MatchParen term=none ctermbg=235 ctermfg=12
highlight NonText cterm=none ctermfg=235
highlight Pmenu ctermbg=236 ctermfg=15
highlight PmenuSel ctermbg=0 ctermfg=1
highlight Search term=bold ctermbg=0
highlight SignColumn ctermbg=000
highlight SpellBad ctermfg=001 ctermbg=0
highlight StatusLine ctermbg=234 ctermfg=255 cterm=none
highlight StatusLineNC ctermbg=0 ctermfg=237 cterm=none
highlight VertSplit cterm=none ctermbg=0 ctermfg=235
highlight Visual ctermbg=238 
highlight Search guibg=236

highlight markdownHeadingDelimiter ctermfg=1
highlight htmlH1 ctermfg=1
highlight htmlH2 ctermfg=1
highlight htmlH3 ctermfg=1
highlight htmlH4 ctermfg=1
highlight htmlH5 ctermfg=1
highlight htmlH6 ctermfg=1

highlight YcmErrorSign ctermbg=0 ctermfg=001
