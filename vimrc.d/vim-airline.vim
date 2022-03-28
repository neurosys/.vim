
if has("gui_running")
    "let g:airline_theme="tomorrow"
    "let g:airline_theme="solarized"
    "let g:airline_theme="badwolf"
    let g:airline_theme="tomorrow"
else
    "let g:airline_theme="light"
    "let g:airline_theme="jellybeans"
    let g:airline_theme="msol"
    "let g:airline_theme="tomorrow"
    "let g:airline_theme="zenburn"
endif

let g:airline#extensions#whitespace#enabled=0
set laststatus=2

" Airline can use the patched fonts to display cool effects in status bar
let g:airline_powerline_fonts=1
set encoding=utf8

" Change how tags are displayed in tabgar
let g:airline#extensions#tagbar#enabled = 1

let g:airline#extensions#tagbar#flags = 'f'
"let g:airline#extensions#tagbar#flags = 's'
"let g:airline#extensions#tagbar#flags = 'p'

let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#capslock#enabled = 0

" Do not enable integration with bufferline (keep the airline for other info)
let g:airline#extensions#bufferline#enabled = 0

" Let bufferline echo to the command bar
let g:bufferline_echo = 1

" The characters used to mark the current buffer in bufferline
let g:bufferline_active_buffer_left = '['
let g:bufferline_active_buffer_right = ']'

" Airline can also make the tabline look fancy
let g:airline#extensions#tabline#enabled = 1

if g:airline_powerline_fonts == 0
    if !exists('g:airline_symbols')
       let g:airline_symbols = {}
    endif
endif

