if exists("syntax_on")
    syntax reset
endif
let g:colors_name="Paradise"



highlight Normal guibg=#0e0d1a guifg=#6a77d8
highlight String guifg=#dddfe9  guibg=None
highlight SpecialChar guifg=#ffffff guibg=None
highlight Comment guifg=#5c6676 guibg=None cterm=italic
highlight Statement guifg=#f77dc2 guibg=None gui=bold
highlight Operator guifg=#ffffff guibg=None gui=bold    

highlight vimHiGroup guibg=None guifg=#5966cc 
highlight vimHiGuiFgBg guibg=None guifg=#ffffff
highlight vimGroup guibg=None guifg=#5966cc 
highlight vimHighlight guibg=None guifg=#ff00f2 gui=bold



highlight link Include Statement 
highlight link Conditional Statement 
highlight link Repeat Statement
hi Pmenu  guifg=#8ae1f2  guibg=#283652
hi PmenuSel  guifg=#f77dc2  guibg=bg  gui=bold
hi WildeMenu guifg=#8ae1f2  guibg=#283652
hi Visual  guibg=#283652
hi LineNr guifg=#5966cc guibg=None
hi CursorLineNr guifg=#8c97ea  guibg=None
hi CursorLine guifg=None guibg=#212020
hi NonText guifg=#ffffff
set fillchars+=vert:\ 
highlight VertSplit guibg=None guifg=bg
set foldcolumn=0
hi foldcolumn guibg=bg
hi ALEErrorSign ctermbg=NONE ctermfg=red
hi ALEWarningSign ctermbg=NONE ctermfg=yellow

"hi SignColumn guibg=None
hi link Search  Pmenu 


"startify colors
highlight StartifyBracket ctermfg=240
highlight StartifyFooter  ctermfg=240
highlight StartifyHeader  ctermfg=114
highlight StartifyNumber  ctermfg=215
highlight StartifyPath    ctermfg=245
highlight StartifySlash   ctermfg=240
highlight StartifySpecial ctermfg=240


" Attempt to replicate GitHub's Golang colorscheme
" on a dark background
" John Arundel, Bitfield Consulting john@bitfieldconsulting.com

hi Special              ctermfg=None guifg=#ffffff guibg=None
hi String               ctermfg=None guifg=#ffffff guibg=None
hi goTypeConstructor    ctermfg=None guifg=#ffffff guibg=None
hi Identifier           ctermfg=None guifg=#618dfa guibg=None
hi Constant             ctermfg=None guifg=#0f67cb guibg=None gui=bold
hi Boolean              ctermfg=None guifg=#ff00f2 guibg=None gui=bold
hi goPredefinedIdentifiers guifg=#0f67c1 guibg=None
hi Function              guifg=#8c97ea  guibg=None
hi goMethodCall          guifg=#8c97ea guibg=None
hi goFunctionCall        guifg=#0f67cb guibg=None
hi goFormatSpecifier     guifg=#618dfa guibg=None
hi keyword               guifg=#ff00f2 gui=none guibg=None gui=bold
hi Statement             guifg=#ff00f2 gui=none guibg=None
hi PreProc               guifg=#ffffff gui=none guibg=None
hi Type                  guifg=#8c97ea gui=none guibg=None
hi goSimpleArguments     guifg=#3a2a2e guibg=None
hi goArgumentName        guifg=#ffffff guibg=None
hi goArgumentType        guifg=#ffffff guibg=None


" screen furniture
hi VertSplit ctermfg=0 guifg=#fafafa guibg=#fafafa
hi CursorLine guifg=#8c97ea guibg=#3a2a2e

" GoCoverage support
hi def link goCoverageNormalText Comment
hi def      goCoverageCovered    ctermfg=green guifg=#00aa00 guibg=#fafafa
hi def      goCoverageUncover    ctermfg=red guifg=#ff0000 guibg=#fafafa

" Directory browser
hi Directory ctermfg=69 guifg=#0f67cb  guibg=#fafafa

" Misc
hi Title ctermfg=69 guifg=#6c4bbf guibg=#fafafa
hi CtrlPMatch ctermfg=69 guifg=#0f67cb guibg=#fafafa gui=bold

"which key
hi link WhichKey Boolean 
hi WhichKeySeparator guifg=#6c4bbf
"WhichKeyDesc 	
hi WhichKeyValue guifg=#0f67cb
hi WhichKeyFloat guibg=#0e0d1a 

hi NvimTreeOpenedFolderName guibg=None
hi NvimTreeFolderName guibg=None
