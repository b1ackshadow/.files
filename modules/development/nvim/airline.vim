


let g:airline_symbols = {}


" air-line
let g:airline_powerline_fonts = 1
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''
"hi CursorLineNr   term=bold ctermfg=Red gui=bold guifg=MediumOrchid1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep =''
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_tab_count = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#show_tab_count = 1 

let g:airline#extensions#tabline#tab_nr_type = 0 " # of splits

let g:airline_left_sep = "\uE0B8"
let g:airline_right_sep = " \uE0BA"
let g:airline_right_alt_sep = "\uE0BA"
let g:airline_section_warning = ""
let g:airline_section_error = ""
"let g:airline_section_z = airline#section#create_right(['%l/%L ☰ %c'])
"let g:airline_section_z = '%l/%L ☰ %c'


let g:airline_stl_path_style = 'short'
