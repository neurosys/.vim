if has("gui")
    " Set the color schema
    "color darkZ
    "color elflord
    "color slate
    "color molokai
    color myelflord

    " Suggest use of collors that look good on white backgrounds
    "set background=light
    set background=dark

    if has("gui_running") && has("unix")
        if has("gui_gtk2")
            "set guifont=Monospace\ 12
            "set guifont=Bitstream\ Vera\ Sans\ Mono\ 12
            "set guifont=DejaVu\ Sans\ Mono\ 12
            "set guifont=Fixed\ 12
            "set guifont=Liberation\ Mono\ for\ Powerline\ 12
            set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 14
        else
            "set guifont=Ubuntu\ Mono\ 13
            "set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 14
            set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 14
        endif
        set lines=45 columns=80
    else
        " Specify a nicer layout
        au GUIEnter * set lines=48 columns=94
        " Use a nicer font
        ":set guifont=ProggyCleanTT_CE:h12
        ":set guifont=Ubuntu_Mono:h11:cANSI
        ":set guifont=Ubuntu_Mono:h10:cANSI
        :set guifont=Ubuntu_Mono_derivative_Powerlin:h18:cANSI
        "
        " Still, by default we should open inf full screen
        au GUIEnter * simalt ~x
    endif

    " No menu and tab bar (default egmrLtT)
    :set guioptions=

    " Alt-Space is System menu
    noremap <M-Space> :simalt ~<CR>
    inoremap <M-Space> <C-O>:simalt ~<CR>
    cnoremap <M-Space> <C-C>:simalt ~<CR>

    " Paste in insert mode
    cmap <C-V> <C-R>+
    exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
else
    " Suggest use of colors that look good on dark backgrounds
    set background=dark
    "set term=$TERM
    "color colorzone
    "color darkdot
    "color devbox-dark-256 " merge bine cu AirlineTheme bubblegum
    color myelflord
endif

" Windows
" Use a nicer font
":set guifont=ProggyCleanTT_CE:h12
"
" Linux
":set guifont=Andale\ Mono\ 10
":set guifont=Courier\ New\ 12
":set guifont=DejaVu\ Sans\ Mono\ 10
":set guifont=Liberation\ Mono\ 10
":set guifont=Monospace\ 12
":set guifont=Ubuntu\ Mono\ 12
"
"
