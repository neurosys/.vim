
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

" <vim-go>
" available 
:map <silent> \r :GoRename<Enter>
" Gives a list of implementation for the function
:map <silent> \i :GoImplements<Enter> 
" Gives a list of who is calling this function (if called via pointer... tough luck)
:map <silent> \c :GoCallers<Enter> 
" Switch betwen .go and _test.go file
:nmap <silent> \tt :map <silent> :GoAlternate<Enter>
" Populates all fields in struct with default values
:map <silent> \l :GoFillStruct<Enter>
" Generates if err != nil {return...} 
:map <silent> \n :GoIfErr 
" IMPORTANT :GoImpl <receiver> <interface> " Generates implementation for the given interface
"
" :GoLint!<Enter> "Run linter for the current file (without '!' it also jumps to the first problem)
" NOT suitable: :GoDoc <C-r>w<Enter> " Open documentation in split window (requires also the package name which C-r doesn't provide)
" :GoInfo<Enter> " Briefly displays type info about the current word
" :GoTest<Enter> " Run the _test.go files in current directory
" :GoTestFunc<Enter> " Run the test for the current function

" Show GoDoc in baloon
let g:go_doc_balloon = 0
" Show GoDoc in popup-window
let g:go_doc_popup_window = 1

" Completes from unimported packages as well. TODO Set to true as test
let g:go_gopls_complete_unimported = v:null

" Ho gopls matches for completions (fuzzy|caseSensitive)
let g:go_gopls_matcher = v:null



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
