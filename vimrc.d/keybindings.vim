
" Wrap lines
" [ow to enable
" ]ow to disable

" Walk trough buffers
:map <M-j> :bprevious<Enter>
:map <M-k> :bnext<Enter>
:map <M-h> :buffers<Enter>

" Open / Close folds
nnoremap <space> za

:map <silent> \tag :TagbarToggle<Enter>

:map <silent> \u :UndotreeToggle<Enter>

" TODO use Vexplore instead
":map <silent> \n :NERDTreeToggle<Enter>


" emacs like movements in command line and insert mode
" <emacs>
    :cnoremap <C-a>  <Home>
    :inoremap <C-a>  <Esc>I

    :cnoremap <C-b>  <Left>
    :inoremap <C-b>  <Esc>hi

    :cnoremap <C-f>  <Right>
    :inoremap <C-f>  <Esc>a

    :cnoremap <C-d>  <Delete>
    :inoremap <C-d>  <Delete>

    :inoremap <C-w>  <Esc>diWi

    :cnoremap <M-b>  <S-Left>
    :inoremap <M-b>  <Esc>Bi

    :cnoremap <M-f>  <S-Right>
    :inoremap <M-f>  <Esc>W

    :cnoremap <M-d>  <S-right><Delete>
    :inoremap <M-d>  <Esc>dW

    :cnoremap <Esc>b <S-Left>
    :inoremap <Esc>b <S-Left>

    :cnoremap <Esc>f <S-Right>
    :cnoremap <Esc>d <S-right><Delete>
    :cnoremap <C-g>  <C-c>
" </emacs>


" <ctags>
    " <C-\> Open item in a new tab
    map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
    " <A-]> Open item in a vertical split
    map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
    "map <F8> :sp <CR>:exec("tag ".expand("<cword>"))<CR>
    "map <F8> :ptag <C-R>=expand("<cword>")<CR><Enter>

    "map <F9> :call TagPreviewerToggle()<Enter>
    " display prototype in preview window
    "map <M-i> <C-w>}
    "map <silent> <M-i> :call TagPreviewerToggle()<Enter>
    "map <silent> \i :call TagPreviewerToggle()<Enter>
    let g:TagPreviewerOpen=0

    function TagPreviewerToggle()
        if g:TagPreviewerOpen==1
            let g:TagPreviewerOpen=0
            execute "pclose"
        else
            let current_word = expand("<cword>")
            let g:TagPreviewerOpen=1
            execute "ptag " . current_word
        endif
    endfunction
" </ctags>


" <enhance browsing>
    " Scroll screen up and down
    :map <C-j> <C-e>
    :map! <C-j> <C-e>
    :map <C-k> <C-y>
    :map! <C-k> <C-y>
" </enhance browsing>


" <grep results browsing>
" Jump to previous result in the local list
:map <C-h> :lp<Enter>
:map! <C-h> <Esc>:lp<Enter>

" Jump to next result in the local list
:map <C-l> :lne<Enter>
:map! <C-l> <Esc>:lne<Enter>

:map <silent> \s :tab split<Enter>

:vmap <silent> \j :! par -j 80<Enter>
" <abbreviations>
:ab pt pentru

"  Copy in clipboard (on linux only?) up to the ending line (useful for stack traces)
:map <silent> \y "+y

" Full screen
" :map <silent> \x :simalt ~x<Enter>
:map <silent> \x :call ToggleFullScreen()<Enter>
let g:FullScreen=0

function ToggleFullScreen()
    if g:FullScreen==0
        let g:FullScreen=0
        execute "simalt ~x"
    else
        let g:FullScreen=1
        execute "simalt ~r"
    endif
endfunction

"
:ab ------ -------------------------------------------------------------------------------
:ab ====== ===============================================================================

" When opening a bracket, we must close it too
:map! {} {<Enter>}<Esc>O

" Store the name of the current function (you must be over it)
:map <F2> :let @x='<C-R><C-W>'<Enter>:let @z=0<Enter>
:map <F1> :let @z=@z+1<Enter>ofmt.Printf("DEXTRACE:>> <C-R>x(<C-R>z)\n")<Esc>==

" Because of accidental :W, let's set it as an alias to :w
nmap :W :w

" :Tabe is one of my usual typos, can't correct behavior so let's tolerate it
nmap :Tabe :tabe

" ZZ is not the way I like to exit vim (i use zz to redraw the screen)
map ZZ zz

" Clear highligts for the searches
:map <silent> \<space> :nohls<Enter>

" Dynamic highlighting for 3 classes
:map <silent> \m1 :call matchadd('1match', '\<'.expand("<cword>").'\>')<Enter>
:map <silent> \M1 :call matchadd('1match', expand("<cword>"))<Enter>

:map <silent> \m2 :call matchadd('2match', '\<'.expand("<cword>").'\>')<Enter>
:map <silent> \M2 :call matchadd('3match', expand("<cword>"))<Enter>

:map <silent> \m3 :call matchadd('3match', '\<'.expand("<cword>").'\>')<Enter>
:map <silent> \M3 :call matchadd('3match', expand("<cword>"))<Enter>

:map <silent> \m4 :call matchadd('4match', '\<'.expand("<cword>").'\>')<Enter>
:map <silent> \M4 :call matchadd('4match', expand("<cword>"))<Enter>

:map <silent> \m5 :call matchadd('5match', '\<'.expand("<cword>").'\>')<Enter>
:map <silent> \M5 :call matchadd('5match', expand("<cword>"))<Enter>

:map <silent> \mm :call clearmatches()<Enter>

" Launch the fuzzyfinder
":map <silent> \f :FufCoverageFile<Enter>

" Don't use Ex mode, use Q for formatting
map Q gq

:map <silent> <M-F1> :terminal<Enter>

" <vim-go>
" available 
autocmd FileType go map <silent> \r :GoRename<Enter>

" Gives a list of implementations for the function
execute "set <M-i>=\ei"
autocmd FileType go map <silent> <M-i> :GoImplements<Enter> 

" Populates all fields in struct with default values
autocmd FileType go map <silent> \fil :GoFillStruct<Enter>

" Dump variable (semi automated) must not be <silent> as we may need to edit
" what we dump
execute "set <M-d>=\ed"
autocmd FileType go nmap <M-d> :GoDebugPrint <C-r><C-S-w>

" Add tags to a struct
autocmd FileType go nmap <silent> \js :GoAddTags<Enter>

" Run go build
execute "set <M-m>=\em"
autocmd FileType go nmap <silent> <M-m> :GoBuild<Enter>
"autocmd FileType go nmap <silent> <S-m> :GoBuild<Enter>

" Run tests
"autocmd FileType go nmap <silent> <C-S-m> :GoTest<Enter>
execute "set <M-M>=\eM"
autocmd FileType go nmap <silent> <M-M> :GoTest<Enter>

" Run linter
"autocmd FileType go nmap <silent> <C-S-l> :GoMetaLinter<Enter>
"execute "set <M-l>=\el"
"autocmd FileType go nmap <silent> <M-l> :GoMetaLinter<Enter>
autocmd FileType go nmap <silent> \l :GoMetaLinter<Enter>

" Run GoDescribe (gopls 'linter')
execute "set <M-L>=\eL"
autocmd FileType go nmap <silent> <M-L> :GoDescribe<Enter>

" Run the current test
execute "set <M-f>=\ef"
autocmd FileType go map <silent> <M-f> :GoTestFunc<Enter>

" Jump to the test or implementation
autocmd FileType go nmap <silent> <S-y> :GoAlternate<Enter>
"execute "set <M-y>=\ey"
"autocmd FileType go map <silent> <M-y> :GoAlternate<Enter>

" Gives a list of who is calling this function (if called via pointer... tough luck)
"autocmd FileType go map <silent> <C-c> :GoCallers<Enter> 
execute "set <M-c>=\ec"
autocmd FileType go map <silent> <M-c> :GoCallers<Enter>

" Insert error handling (works in insert mode)
execute "set <M-e>=\ee"
autocmd FileType go imap <silent> <M-e> <Esc>:GoIfErr<Enter>kkA

" Insert error handling (works in insert mode)
execute "set <M-q>=\eq"
"autocmd FileType go map <silent> <M-q> :GoDebugStop<Enter>
autocmd FileType go map <silent> <M-q> :call StopDebugProfile()<Enter>

"" IMPORTANT :GoImpl <receiver> <interface> " Generates implementation for the given interface

autocmd FileType go nmap <silent> \dd1 :call RunDebugProfile(1)<Enter>
"autocmd FileType go nmap <silent> \dd1 :MyGoDebug1<Enter>
"autocmd FileType go nmap <silent> \dd2 :GoDebugStart <params> <Enter>
"autocmd FileType go nmap <silent> \dd3 :GoDebugStart <params> <Enter>
autocmd FileType go nmap <silent> \dt :call GoDebugTestFunc<Enter>


" Show GoDoc in baloon
let g:go_doc_balloon = 0
" Show GoDoc in popup-window
let g:go_doc_popup_window = 1

" Completes from unimported packages as well. TODO Set to true as test
let g:go_gopls_complete_unimported = v:null

" Ho gopls matches for completions (fuzzy|caseSensitive)
let g:go_gopls_matcher = v:null

" Automatically (in theory) highlight identifiers of same type as the one
" under cursor
let g:go_auto_sameids = 1

" Allows you to see diagnostics from gopls using
" :GoDiagnostics
let g:go_diagnostics_enabled = 1

" Not entirely sure what it does... yet
let g:go_auto_type_info = 1

"\ 'goroutines': 'leftbelow 10new',
let g:go_debug_windows = {
      \ 'vars':       'rightbelow 60vnew',
      \ 'stack':      'leftabove 10new',
      \ 'out':        'botright 10new',
\ }

"#:map <silent> \tag :TagbarToggle<Enter>
"#:map <silent> \u :UndotreeToggle<Enter>
"#":map <silent> \n :NERDTreeToggle<Enter>
"#    "map <silent> <M-i> :call TagPreviewerToggle()<Enter>
"#    map <silent> \i :call TagPreviewerToggle()<Enter>
"#:map <silent> \s :tab split<Enter>
"#:vmap <silent> \j :! par -j 80<Enter>
"#:map <silent> \y "+y
"#" :map <silent> \x :simalt ~x<Enter>
"#:map <silent> \x :call ToggleFullScreen()<Enter>
"#:map <silent> \c :Calendar<Enter>
"#:map <silent> \<space> :nohls<Enter>
"#":map <silent> \f :FufCoverageFile<Enter>

" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

function RunDebugProfile(profileNumber)
    " todo try for other paths for .envrc, not just ./
    let rawProfile = readfile(".envrc")
    let prefix = "#+vim-go:"
    let prefixLength = len(prefix)
    let profilesLines = []

    " Extract the profile(s)
    for line in rawProfile
        " Ignore everything that doesn't have the prefix
        if line[0:prefixLength-1] != prefix
            continue
        endif

        " Remove the prefix from each line
        let profileLine = substitute(line, prefix, "", "")
        call add(profilesLines, profileLine)
    endfor
    echo profilesLines

    let keywordProfile = "profile:"
    let keywordCmd = "cmd:"
    let keywordEnv = "env:"

    let profiles = []
    let profile = {"name": "", "cmd": [], "env": {}}

    let tmpProfile = {}
    
    for pLine in profilesLines
        echo "Begin =================================================================================="
        echo pLine
        echo tmpProfile
        echo profiles

        " Check to see if we're in the begining of the profile
        " a profile always starts with 'profile:<name>'
        if pLine[0:len(keywordProfile)-1] == keywordProfile
            echo "DEXTRACE:>> (1) Found profile"
            if has_key(tmpProfile, "name") != 0 && has_key(tmpProfile, "cmd") != 0
                echo "DEXTRACE:>> (2) Profile name not empty"
                call add(profiles, tmpProfile)
                let tmpProfile = {}
            endif

            echo "DEXTRACE:>> (3) Profile name empty"
            let name = split(pLine, ":")[1]
            let tmpProfile["name"] = name
            echo name
            echo tmpProfile
            echo "DEXTRACE:>> (4) End of profile section"
            continue

        endif

        " Check to see if the line starts withthe profile name
        " ignore otherwise as we don't know what to do with it
        if pLine[0:len(tmpProfile["name"])-1] != tmpProfile["name"]
            continue
        endif

        " Remove the profile name prefix as we don't need it from now on
        let contentLine = substitute(pLine, tmpProfile["name"] . ":", "", "")

        echo "DEXTRACE:>> " . contentLine

        " If we're here it means we're inside of a profile
        
        if contentLine[0:len(keywordCmd)-1] == keywordCmd
            echo "DEXTRACE:>> (5) Found cmd"
            let cmd = split(contentLine[len(keywordCmd):], ",")
            let tmpProfile["cmd"] = cmd
            continue
        endif

        echo "DEXTRACE:>> (6) End of cmd"

        if contentLine[0:len(keywordEnv)-1] == keywordEnv
            echo "DEXTRACE:>> (7) Found env"
            let envPair = split(contentLine[len(keywordEnv):], "=")
            let pair = {envPair[0]: envPair[1]}
            if has_key(tmpProfile, "env") == 0
                let tmpProfile["env"] = []
            endif
            call add(tmpProfile["env"], pair)
        endif
        echo "DEXTRACE:>> (8) End of loop"
    endfor

    if has_key(tmpProfile, "name") != 0 && has_key(tmpProfile, "cmd") != 0
        call add(profiles, tmpProfile)
    endif
    echo profiles


    let chosenProfile = profiles[a:profileNumber]
    let g:myActiveDebugProfile = chosenProfile
    if has_key(chosenProfile, "env") != 0
        for envVar in chosenProfile["env"]
            for envKey in keys(envVar)
                let exportCmd = "let $" . envKey . '="' . envVar[envKey] . '"'
                echo exportCmd
                execute(exportCmd)
            endfor
        endfor
    endif

    call call('go#debug#Start', extend(['debug', '.'], chosenProfile["cmd"]))
endfunction

func StopDebugProfile()
    call go#debug#Stop()
    let dbgProfile = g:myActiveDebugProfile
    if has_key(dbgProfile, "env") != 0
        for envVar in dbgProfile["env"]
            for envKey in keys(envVar)
                let exportCmd = "unlet $" . envKey
                echo exportCmd
                execute(exportCmd)
            endfor
        endfor
    endif
endfunction
