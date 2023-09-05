set signcolumn=no "gets rid off the grey bar on the left in misc.vim

"let g:slime_target = "tmux"
"let g:slime_paste_file = "$HOME/.slime_paste"
"
"let g:slime_cell_delimiter = "```"
"let g:slime_python_ipython = 1
"" vim-slime repl default target - default session and pane 1
"let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": "1"}

let startup_message = [
            \ '    /$$$$$                      /$$                 /$$                 /$$   /$$               ',
            \ '   |__  $$                     | $$                | $$                |__/  | $$               ',
            \ '      | $$ /$$   /$$  /$$$$$$$/$$$$$$          /$$$$$$$  /$$$$$$        /$$ /$$$$$$             ',
            \ '      | $$| $$  | $$ /$$_____/_  $$_/         /$$__  $$ /$$__  $$      | $$|_  $$_/             ',
            \ ' /$$  | $$| $$  | $$|  $$$$$$  | $$          | $$  | $$| $$  \ $$      | $$  | $$               ',
            \ '| $$  | $$| $$  | $$ \____  $$ | $$ /$$      | $$  | $$| $$  | $$      | $$  | $$ /$$           ',
            \ '|  $$$$$$/|  $$$$$$/ /$$$$$$$/ |  $$$$/      |  $$$$$$$|  $$$$$$/      | $$  |  $$$$/           ',
            \ ' \______/  \______/ |_______/   \___/         \_______/ \______/       |__/   \___/  ',
            \]

function! s:center(lines) abort
    let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
    let centered_lines = map(copy(a:lines),
                \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
    return centered_lines
endfunction
let g:startify_custom_header = s:center(startup_message)

"Tmux line stuff
if exists('$TMUX')
    " Colors in tmux
    let &t_8f = "<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "<Esc>[48;2;%lu;%lu;%lum"
endif



let g:tmuxline_separators = {
            \ 'left_alt' : '',
            \ 'left': '\uE0B8',
            \ 'right_alt' : '',
            \ 'right' : '\uE0BA',
            \ 'space' : ' '}

" Show coc doc when hovering over a word intead of pressing 'K'
function! ShowDocIfNoDiagnostic(timer_id)
    if (coc#float#has_scroll() == 0)
        silent call CocActionAsync('doHover')
    endif
endfunction

function! s:show_hover_doc()
    call timer_start(500, 'ShowDocIfNoDiagnostic')
endfunction

"autocmd CursorHoldI * :call <SID>show_hover_doc()
"autocmd CursorHold * :call <SID>show_hover_doc()


"let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

