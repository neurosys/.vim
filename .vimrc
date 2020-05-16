" TODO
" - function for toggle showing the unprintable characters, end of line spaces
"   and standard column ending
"
" Rather rarely used stuff
"
" Nice colorschemes
    " -------------------------------------------------------------------------------
    " bclear       ( white background, low contrast)
    " blacksea     ( black background, high contrast)
    " chela_light  ( white background, medium contrast)
    " darkZ        ( grey background, medium contrast), nice colors for c++
    " darkbode     ( black background, medium contrast) nice colors for c++
    " darkspectrum ( grey background, medium contrast) almost nice for c++
    " delek        ( white background, high contrast) ... original pack
    " desert       ( grey background, high contrast) good for c++
    " earendel     ( grey bg, medium contrast)
    " evening      ( grey bg, medium contrast) weird string highlighting
    " jellybeans   ( grey bg, medium contrast) ok for codding... bad for text
    " mustang      ( grey bg, medium contrast) ok for codding... bad for text
    " rootwater    ( grey bg, medium contrast) ok for coding
    " --------------------------------------------------------------------------------
    "  For dos-console:
    " blackbeauty
    " koehler
    " blueprint
    " bmichaelsen
    " borland
    " bw
    " camfire
    " carvedwoodcool
    " chela_light

" Ctags
    " -------------------------------------------------------------------------------
    " :tag /<partial symbol name>
    " Searches for <partial symbol name> trough the tag list (regexp can be applyed)
    "

" Highlight <pattern> with the settings for this <class>
    " -------------------------------------------------------------------------------
    "   :match    <class>   /<pattern>/
    "   :2match   <class>   /<pattern>/
    "   :3match   <class>   /<pattern>/
    "
    " there are only 3 matches (should be enough) and the classes can be:
    "   - error
    "   - normal (no highlight)
    "   - comment
    "   - todo
    " I think I can define more of them using the syntax files
    "

" Composite search
    " -------------------------------------------------------------------------------
    " /<pattern1>/;/<pattern2>/
    " This will search for <pattern1>, jump to that position, and from there
    " it will jump to the next ocurence of <pattern2>
    "
    " Obs! hitting n or p after that, won't trigger a new composite search of
    " the same type, but will search again for <pattern2>
    "
    "

" Vimdiff
    " -------------------------------------------------------------------------------
    " At the command line, enter:
    " vimdiff file1 file2
    " to compare the differences between to files.
    " For multiple files, see type "man vimdiff" into a terminal.
    "
    " ]c          - next difference
    " [c          - previous difference
    " Ctrl+ww     - switch windows
    " do          - diff obtain
    " dp          - diff put
    " zo          - open folded text
    " zc          - close folded text
    " :diffupdate - re-scan the files for differences

" Smart replaces
    " -------------------------------------------------------------------------------
    " :%s/\(<pattern>\)/\1<something else>/
    "
    "           1. define \(<pattern\) as attom 1
    "           2. replace atom 1 with itself \1 followed by <something>else
    "
    " :s/\%V_/ /g
    "
    "           Replace '_' with ' ' only in the visual selection
    "
" Case sensitive searches
    " -------------------------------------------------------------------------------
    " By default we turned off case sensitive searches, so to enable them for
    " a particular search prefix the pattern with \C
    " When including a \c the search is case insensitive

" Selective save
    " -------------------------------------------------------------------------------
    " <x>,<y>w saves only the changes made between lines <x> trough <y>

" cmap
    " -------------------------------------------------------------------------------
    " cmap makes mappings for the command line :-)
    "
" command
    " Creates a new command (command name must begin with capital letter)
    " command Functionlist !ctags -x %

" Special navigation
    " -------------------------------------------------------------------------------
    " <nr>%               - Jumps to <nr>% for example 50% jumps at half the file
    " <nr>|               - jumps to the <nr> column on that line
    " <C-f>               - Forward one screen
    " <C-b>               - Backward one screen
    " '' sau ``           - Gets back to the position before a jump
    " [{                  - Jumps to the beginning of the current block
    " ]}                  - Jumps to the ending of the current block
    " '[                  - Jumps to text just changed
    " ']                  - Jumps to text just changed
    " '<                  - Jumps to text just changed
    " '>                  - Jumps to text just changed

" Misc
    " -------------------------------------------------------------------------------
    " ga                    - shows the ascii info for the current character
    " zz                    - Redraws and sets the cursor in the center of the screen
    " g*                    - Searches for the current word, but not only as a distinct
    "                             word but also as part of other words
    " g#                    - Same as g* but in the opposite direction
    " <TAB>                 - Same as <C-I>
    " g<C-g>                - Shows a detailed info about the cursor position
    " "*y                   - Copy to clipboard
    " "*p                   - Paste from clipboard
    " "<capital letter>yy   - Append the line yanked to register <letter>
    " q<capital letter>     - Appends to macro recorded in register <letter>
    " C-x C-] (insert)      - Autocomplete from the ctags file ;-)
    "
    " :e ++ff=<unxi/dos>    - Reopens the file and accepts both CRLF and CR as
    "                         line endings
    " :%!xxd                - Replaces the buffer with an hex representation
    "                         of its content
    " :%!xxd -r             - Converts from the current hex representation of
    "                         a file to a normal binary (or text)
    "                         representation
    " :map                  - Lists all normal mod mappings
    " :unmap                - Removes a map made with map (Similar for the others)
    " :verbose map          - Detailed list with all mappings for normal mode
    " :verbose imap         - Detailed list with all mappings for insert mode
    " :verbose set <option> - List with the place where that specific setting was being made
    " :jumps                - List with all the jumps made
    " :options              - Opens a buffer with all the current configurations
    "                             also has small comments about them
    "                             you can also directly edit this file at
    "                             runtime
    " g? (on a selection)   - Encodes / Decodes base64 the selection
    " :syntax clear         - Turns of syntax highlight (useful for speed)
    "
    " :set scrollbind       - Scroll all the windows at the same time
    "
    "dl"    delete character (alias: "x")       |dl|
    "diw"   delete inner word                   *diw*
    "daw"   delete a word                       *daw*
    "diW"   delete inner WORD (see |WORD|)      *diW*
    "daW"   delete a WORD (see |WORD|)          *daW*
    "dd"    delete one line                     |dd|
    "dis"   delete inner sentence               *dis*
    "das"   delete a sentence                   *das*
    "dib"   delete inner '(' ')' block          *dib*
    "dab"   delete a '(' ')' block              *dab*
    "dip"   delete inner paragraph              *dip*
    "dap"   delete a paragraph                  *dap*
    "diB"   delete inner '{' '}' block          *diB*
    "daB"   delete a '{' '}' block              *daB*
    "pr -3 -t aaa.txt      - Not exactly vim, but it might be useful someday,
    "                        create 3 columns from aaa.txt

" Debug
    " -------------------------------------------------------------------------------
    " :map                - Lists all normal mod mappings
    " :imap               - Lists all insert mod mappings
    " :cmap               - Lists all cmd line mappings
    " :marks              - List with all active marks
    " :script             - Displays in order all the scripts that vim has executed


" Registers
    " -------------------------------------------------------------------------------
    " To show the content of the registers use :reg
    " " Unnamed register, containing the text of the last delete or yank
    " % Current filename
    " # Alternate file name (Full path)
    " * Clipboard contents (X11: primary selection)
    " + Clipboard contents/Last search pattern
    " : Last command-line
    " . Last inserted text
    " - Last small (less than a line) delete
    " = Launches a vim function, of course, you can always use system() to pull
    "       out something from the output of a command:
    "       <C-R>=system('ls -1')<C-R>

" g mode
    " -------------------------------------------------------------------------------
    " :[range]g /<pattern>/ <cmd> - executes <cmd> on all the lines from the
    "       [range] that have <pattern> on them, if ! is present after g, the
    "       <cmd> will be executed on the lines that don't contain the <pattern>
    "
    " useful cmds:
    "       l (small L) list
    "       y <register> yank in <register>
    "       d delete
    "       normal <normal mode cmds> executes <normal mode cmds>
    "           on each of the lines that contain <pattern>
    "       s/<to be replaced>/<replacement>/ replaces <to be replaced> with
    "           <replacement>
    " ex:
    "   g/<pattern>/y A
    "   Adds all the lines matching <pattern> into register a

" Moving windows
    " --------------------------------------------------------------------------------
    " - C-w K moves the current window as top horizontal
    " - C-w J moves the current window as bottom-horizontal
    " - C-w L moves the current window as left-vertical
    " - C-w H moves the current window as right-vertical
    "
    " - :set winwidth=<nr> seteaza latimea ferestrei curente la <nr>
    " - :set winheight=<nr> seteaza inaltimea ferestrei curente la <nr>

" File Browser
    " --------------------------------------------------------------------------------
    "  :Vex opens a vertical list of files in the folder containing the
    "       current edited file
    "  %    pressed in the file browser window, creates a new file for editing
    "       putting it in the current explored folder
    "  t    pressed in the file browser window, opens the selected file in a
    "       new tab and selects the tab
    "  T    pressed in the file browser window, opens the selected file in a
    "       new tab but doesn't selects the tab
    "  d    pressed in the file browser window, creates a new directory

set nocompatible
"behave mswin

if has("win32unix")
"set runtimepath = ~/.vim,
    "set runtimepath=~/vimfiles,$VIMRUNTIME
 "   set runtimepath+=c:/Users/NeuroSys/vimfiles
 "   set runtimepath+=~/vimfiles
endif

if has("unix")
    " Nothing for the moment
endif

if has("win32")
    " Nothing for the moment
endif

"set diffexpr=MyDiff()
"function MyDiff()
"  let opt = '-a --binary '
"  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"  let arg1 = v:fname_in
"  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"  let arg2 = v:fname_new
"  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"  let arg3 = v:fname_out
"  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"  let eq = ''
"  if $VIMRUNTIME =~ ' '
"    if &sh =~ '\<cmd'
"      let cmd = '""' . $VIMRUNTIME . '\diff"'
"      let eq = '"'
"  else
"      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"    endif
"  else
"    let cmd = $VIMRUNTIME . '\diff'
"  endif
"  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"endfunction


"""""""""""""""""""""""""""""""""""""""""""""
" Aspect and general behaviour (no mappings)
"""""""""""""""""""""""""""""""""""""""""""""

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
            set guifont=Liberation\ Mono\ for\ Powerline\ 12
        else
            "set guifont=Ubuntu\ Mono\ 13
            set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 14
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

    " No menu and tab bar
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
    set term=$TERM
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

" Use UTF8 encoding
:set encoding=utf8

" Imporove performance by reducing the redraws
:set lazyredraw

" No bell, now flashes, NO FUCKING THING !!!!
:set noerrorbells
:set visualbell
:set vb t_vb=

" We need line numbers
:set nu is

" We need a ruler
set ruler

" All tabs must have 4 spaces ONLY !!!!
" 
" Number of spaces to display when encounter a <Tab> in a file
:set tabstop=4
" Number of spaces to insert when pressing <Tab>
:set softtabstop=4
" Number of spaces to insert in place of a <Tab> when indenting
:set shiftwidth=4

" Remove all the existing autocmds (useful when you re-source .vimrc)
:autocmd!

" Used to highlight redundant white spaces and tabs at the end of the line            
autocmd ColorScheme * highlight RedundantSpaces ctermbg=DarkMagenta guibg=#DfD090
"endif


" Do not wrap lines (useful in 60% cases, very annoying in rest)
set nowrap

" I want search highlighting on
set hls

" Simulate Alt pressing (sincer nu stiu la ce-mi foloseste)
set si is

" Use line number when printing (on paper)
set printoptions=number:y

" Use spaces instead of tabs
set expandtab

" Use fast grep for searching
":set grepprg=fg
set grepprg=egrep\ -RHn

" Ignore case when searching
set ignorecase

" Use smartcase when searching (if searched string is lowercase => ignore
" case, if uppercase " present => case sensitive)
set smartcase

" When in insert mode, I want to be able to backspace things entered in other
" sessions
set backspace=indent,eol,start

" Show incomplete commands
set showcmd

" When a bracket is inserted, briefly jump to the matching one
set showmatch

" When a file is changed outside of vim, reload it
set autoread

" Attempt to determine the type of a file based on its name and possibly by
" content
filetype indent plugin on
filetype plugin on

" Instead of failing my commands because of unsaved info, ask for my
" confirmation
set confirm

" Command line completion (hit tab and switch to next available command or file)
set wildmenu
" List all available options coresponding to already entered characters
set wildmode=list:full

" Auto complete
set completeopt=menu,longest,preview

" Allow buffer switching without write
set hidden

if v:version > 702
    " Highlight columns 80, 120, 130
    "set colorcolumn=80,120,130
endif


" Let me choose how long a text line can be (by default 78)
set textwidth=0

" In insert mode display tabs as >-
":set listchars=tab:>-,trail:-

" Set persistent-undo
" undofile

" When splitting, put the new split below, or at right
:set splitbelow
:set splitright

" Highlight the current line, but only in the current window
"au WinEnter * setlocal cursorline
"setlocal cursorline
"au WinLeave * setlocal nocursorline

" Leave insert mode after 15 seconds of no imput
au CursorHoldI * stopinsert
au InsertEnter * let updaterestore=&updatetime | set updatetime=15000
au InsertLeave * let &updatetime=updaterestore

" start scrolling when within 0 lines near the top/bottom
set scrolloff=0

" Spelling en_us maybe sometimes... ro
command Spell setlocal spell spelllang=en_us
" You can choose suggestions for misspelled words using z=
" Or you can add a word to your personal correctly spelled words by zg
" ]s jump to the next misspelled word, [s to jump to previous


" allow free form selection (i.e. ignoring line endings) in visual block mode
set virtualedit+=block

" Automatically load cscope.out if present
":cs add cscope.out

" Look for the tags file, up in the folder hierarchy
set tags=vtags;/

" Walk trough buffers
:map <M-j> :bprevious<Enter>
:map <M-k> :bnext<Enter>
:map <M-h> :buffers<Enter>

"autocmd syn *.c
" <in c match these operators too>
"autocmd BufRead,BufNew *.c,*.C,*.h,*.H,*.cpp,*.CPP,*.hpp,*.HPP syn match       cOperator       "[\+\->=!<?;~\^\(\)\[\]:}{,\.\|&\*%~]"
"autocmd BufRead,BufNew *.c,*.C,*.h,*.H,*.cpp,*.CPP,*.hpp,*.HPP syn match       cOperator       "[^/*]/[^/*]"
" </in c match these operators too>


" <folding>
    " Stop folding
    "set nofoldenable
    "set foldenable

    "set foldmethod=marker
    "foldmarker, so Vim will know where to fold
    "set foldmarker={,}
    "folding marker, for automatic folding
    "imap <F1> 0i/* {{{ $a */
    "imap <F2> 0i/* }}} $a */

    " Fold based on indentation
    "set foldmethod=manual
    "set foldmethod=marker

    " Open folds for the following operations
    "set foldopen=block,hor,mark,percent,quickfix,search,tag,undo

    " Open / Close folds
    nnoremap <space> za

    "set foldlevelstart=2
    "set foldnestmax=4
    " Extra space to the left of the number column, to show the folding level
    "set foldcolumn=4

    " Minimal number of lines for which folding is enabled
    "set foldminlines=4
" <folding>


" <VimWiki settings>
    " Don't make links from words in camel case
    let vimwiki_camel_case=0

    " Stop folding
    " Value           Description  
    " ''              Disable folding.  
    " 'expr'          Folding based on expression (folds sections and code blocks).  
    " 'syntax'        Folding based on syntax (folds sections; slower than 'expr').  
    " 'list'          Folding based on expression (folds list subitems; much slower).
    let vimwiki_folding=''

    "let g:vimwiki_list = [{'path': 'C:/Documents and Settings/camza.AYADOM/vimwiki/'}]
    " markdown options are = default, markdown and media
    "let g:vimwiki_list = [{'path': '~/.vimwiki/', 'syntax': 'markdown', 'ext': 'wiki'}]

    let wiki = {}
    let wiki.path = '~/vimwiki/'
    let wiki.syntax = 'default'
    let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}
    let wiki.auto_tags = 0
    let g:vimwiki_list = [wiki]
    " ????
    let vimwiki_list_ignore_newline=0
" </VimWiki settings>

" <tagbar>
    ":map <silent> <F12> :TagbarToggle<Enter>
    :map <silent> \tag :TagbarToggle<Enter>
" </tagbar>

" <undotree
    ":map <silent> <F11> :UndotreeToggle<Enter>
    :map <silent> \u :UndotreeToggle<Enter>
" </undotree>

" <NERD tree>
    ":map <silent> <F10> :NERDTreeToggle<Enter>
    ":map <silent> \n :NERDTreeToggle<Enter>

" <NERD tree>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"                                    Key Mappings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
    map <silent> \i :call TagPreviewerToggle()<Enter>
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


" <Review mode>
"map <silent> <F9> :call FormattingToggle()<Enter>
map <silent> \e :call FormattingToggle()<Enter>
let g:FormattingToggleOn=0
function FormattingToggle()
    if g:FormattingToggleOn == 1
        let g:FormattingToggleOn = 0
        set colorcolumn=
        set nolist
        set nospell
        match
    else
        let g:FormattingToggleOn = 1
        set colorcolumn=80,120,130
        set list
        "match RedundantSpaces /\s\+$\| \+\ze\t\|\t/
        match RedundantSpaces /\s\+$\|\t\+\S/
        set spell
    endif
endfunction
" </Review mode>


" <cscope>
    " Easyer method to find files
    "nmap <M-f> :cs find f
    " Find this C symbol
    "nmap <M-s> :cs find s <C-R>=expand("<cword>")<CR><CR>
    " Find this definition
    "nmap <M-g> :cs find g <C-R>=expand("<cword>")<CR><CR>
    " Find functions calling this function
    "nmap <M-c> :cs find c <C-R>=expand("<cword>")<CR><CR>
    " Find assignments to
    "nmap <M-t> :cs find t <C-R>=expand("<cword>")<CR><CR>
    " Find egrep pattern
    "nmap <M-e> :cs find e <C-R>=expand("<cword>")<CR><CR>
    " Find file
    "nmap <M-f> :cs find f <C-R>=expand("<cfile>")<CR><CR>
    " Find files including this file
    "nmap <M-i> :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    " Find functions called by this function
    "nmap <M-d> :cs find d <C-R>=expand("<cword>")<CR><CR>
" </cscope>


" <enhance browsing>
    " Scroll screen up and down
    :map <C-j> <C-e>
    :map! <C-j> <C-e>
    :map <C-k> <C-y>
    :map! <C-k> <C-y>
" </enhance browsing>


" <replace tab with ^>
" (normal mode) for easier jump to the beginig of the line
    ":map <Tab> ^
" <replace tab with ^>

" <grep results browsing>
" Jump to previous result in the local list
:map <C-h> :lp<Enter>
:map! <C-h> <Esc>:lp<Enter>

" Jump to next result in the local list
:map <C-l> :lne<Enter>
:map! <C-l> <Esc>:lne<Enter>

" This assumes zsh shell (for bash, remove the '\\' from before '*' 
:map <silent> \gc :tab split<Enter>:lgrep <C-R>=expand("<cword>")<CR> --include=\*.cpp . <Enter>
:map <silent> \gh :tab split<Enter>:lgrep <C-R>=expand("<cword>")<CR> --include=\*.h . <Enter>
:map <silent> \ga :tab split<Enter>:lgrep -I --exclude-dir=.svn --exclude-dir=.git --exclude=vtags --exclude=cscope.* --exclude=*.svn-base <C-R>=expand("<cword>")<CR> . <Enter>

:map <silent> \s :tab split<Enter>
" Jump to previous result in the quickfix list
":map <F9> :cp<Enter>
":map! <F9> <Esc>:cp<Enter>

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

:map <silent> \c :Calendar<Enter>

"
:ab ------ -------------------------------------------------------------------------------
:ab ====== ===============================================================================

" When opening a bracket, we must close it too
:map! {} {<Enter>}<Esc>O
" </abreviations>




" <put traces in code>
" Add traces to c++ code ;-)
"let @z=0
"let @x=''

" Add call to dexdbgn, using the file name and the function name
":map <F1> :let @z=@z+1<Enter>Odexdbgn("<C-R>z", "<C-R>%", "<C-R>x()");<Esc>==:s;\\;\\\\;g<Enter>:nohls<Enter>

" Add a template monitor message
":map <F1> oMONITOR->Print(_T("DEXTRACE:>> "));<Esc>
":nmap <C-c> p==yy
:map <silent> \d oMONITOR->Print(_T("DEXTRACE:>> (1)"));<Esc>==
:map <silent> \st oOS_TASK->StackTrace();<Esc>==
:map <silent> <C-c> p==<C-a>yy


" Store the name of the current function (you must be over it)
":map <F2> :let @x='<C-R><C-W>'<Enter>

" Add #include "C:/dexdbg.h" to the current file
":map <F4> ggi#include "C:/dexdbg.h"<Enter><Esc>
" </put traces in code>



" Because of accidental :W, let's set it as an alias to :w
nmap :W :w

" :Tabe is one of my usual typos, can't correct behavior so let's tolerate it
nmap :Tabe :tabe

" ZZ is not the way I like to exit vim (i use zz to redraw the screen)
map ZZ zz

" Clear highligts for the searches (does not affect the multi search part, for
" that use :SearchReset)
":map <F5> :nohls<Enter>
:map <silent> \<space> :nohls<Enter>

" Multi search shortcut
" :map <F3> :Search <C-r><C-w><Enter>

" I'll add write permissions for this files, bitches love write permissions
":map <F9> :! chmod +w %<Enter>
":imap <F9> <Esc>:! chmod +w %<Enter>

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
:map <silent> \f :FufCoverageFile<Enter>


" PYTHON ZONE ----------------
"function! PutMyTraces(file_name, function_name)
"python << EOF
"#" truc, asa pot folosi sintaxa aferenta cand editez cod python
"import vim
"import imp
"
"module = imp.load_source("tracer", "C:\\Program Files\\Vim\\tracer.py");
"
"def executor(function_name):
"    a = module.Tracer(vim.current.buffer.name, function_name)
"    a.TraceThisFunction()
"    a.AddInclude(vim.current.buffer)
"
"def test_executor(function_name):
"    cur_buf = vim.current.buffer
"    cur_row, cur_col = vim.current.window.cursor
"    a = module.Tracer(vim.current.buffer.name, function_name)
"    a.AddTrace(cur_buf, cur_row - 1)
"EOF

"map <F1> :python PutMyTraces('<C-R>%', '<C-R><C-W>')<Enter>
"map <F1> :python executor('<C-R><C-W>')<Enter>
"map <F2> :python test_executor('<C-R><C-W>')<Enter>
" / PYTHON ZONE --------------

function! LoadHeader()
python << EOF
import vim
def IsHeader(filename):
    lower_name = filename.lower()
    is_header = False
    list_of_header_extensions = (".h", ".hpp", ".hxx")
    for ext in list_of_header_extensions:
        if lower_name.find(ext) != -1:
            is_header = True
    return is_header

def GetCppName(filename):
    extension_index = filename.rfind(".")
    if extension_index != -1:
        return filename[:extension_index] + ".cpp"

def GetHeaderName(filename):
    extension_index = filename.rfind(".")
    if extension_index != -1:
        return filename[:extension_index] + ".h"

def SwitchToHeader():
    current_file_name = vim.current.buffer.name
    start_file_name = current_file_name.rfind("/")
    current_file_name = current_file_name[start_file_name + 1:]
    is_header = IsHeader(current_file_name)
    next_filename = None
    if is_header:
        next_filename = GetCppName(current_file_name)
    else:
        next_filename = GetHeaderName(current_file_name)
    print(next_filename)
    vim.command("cs find f " + next_filename)

SwitchToHeader()
EOF
endfunction
map <silent> \h :call LoadHeader()<Enter>

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Unknown options from vimrc_example.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""

" Don't use Ex mode, use Q for formatting
map Q gq

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
          \ | wincmd p | diffthis
endif


" python << EOF
" import vim
"
" CELL_SEPARATOR = "|"
" CELL_PADDING = " "
"
" trim_cell_content = True
" add_line_separators = True
"
" def vim_table():
"     table_text = []
"     buf = vim.current.buffer
"     buf_len = len(buf)
"     cursor_y, cursor_x = vim.current.window.cursor
"     current_line = cursor_y - 1
"     #print("current_line =", current_line)
"     while current_line < buf_len and CELL_SEPARATOR in buf[current_line]:
"         #print("current_line =", current_line)
"         table_text.append(buf[current_line].strip())
"         current_line += 1
"
"     table = MakeTable(table_text)
"
"     buf[0 : 0] = table
"
" def DetermineMaxCellSizes(table):
"     max_cell_sizes = []
"     for line in table:
"         for i in range(0, len(line)):
"             cell_size = len(line[i])
"             # Test to see if we have a maximum for this column
"             if i >= len(max_cell_sizes):
"                 max_cell_sizes.append(cell_size)
"             else:
"                 max_cell_sizes[i] = max(max_cell_sizes[i], cell_size)
"     return max_cell_sizes
"
" def GetLineSeparator(cell_sizes, intersection, line):
"     line_separator = []
"     #for cell in cell_sizes:
"     for i in range(0, len(cell_sizes) -1):
"         for j in range(0, cell_sizes[i]):
"             line_separator.append(line)
"         line_separator.append(intersection)
"     return "".join(line_separator) + "\n"
"
"
" def FormatTable(table, cell_sizes, separator, padding, add_line_separators):
"     str_table = []
"     line_sep = GetLineSeparator(cell_sizes, "+", "-")
"     for line in table:
"         str_table.append(line_sep)
"         new_line = ""
"         for i in range(0, len(cell_sizes) -1):
"             max_size = cell_sizes[i]
"             if len(line) > i:
"                 cell_size = len(line[i])
"                 new_line += line[i].ljust(max_size, padding) + separator
"             else:
"                 new_line += padding.ljust(max_size, padding) + separator
"         str_table.append(new_line)
"     str_table.append(line_sep)
"     return str_table
"
"
" # Split the text into cells
" def SplitTable(text, separator, strip_spaces):
"     table_cells = []
"     for line in text:
"         cells = line.split(separator)
"         if strip_spaces == True:
"             stripped_cells = []
"             for cell in cells:
"                 stripped_cells.append(cell.strip())
"             table_cells.append(stripped_cells)
"         else:
"             table_cells.append(cells)
"     return table_cells
"
"
" def MakeTable(text):
"     #print(text)
"     table = SplitTable(text, CELL_SEPARATOR, trim_cell_content)
"     #print(table)
"     max_sizes = DetermineMaxCellSizes(table)
"     #print(max_sizes)
"     return FormatTable(table, max_sizes, CELL_SEPARATOR, CELL_PADDING, add_line_separators)
"
" EOF
"
" map <F1> :python vim_table()<Enter>



" For use of pathogen with vimballs use:
" :UseVimball ~/.vim/bundle/bundle-dir-name-here

" To add a submodule use:
" git submodule add <git repo url> bundle/<name for future submodule>
" git add .
" git commit -m 'Added my submodule X'
" git push origin master
"
" For Windows, this should be made from vimfiles folder (not the .vim symlink under cygwin)
"
"git config --global http.proxy http://proxyuser:proxypwd@proxy.server.com:8080
"
" After the download of the repo, be sure to run the command below in order to
" have the submodules downloaded
"git submodule update --init
"
" To remove a submodule use:
" git submodule deinit -f bundle/<name of the submodule>
"
" Remove the entry from .gitmodule
" and then run
" git rm --cached bundle/<name of the submodule>
"
" To update the submodules
" git submodules update --recursive

" Disable taskwarrior module if program not present
let g:pathogen_disabled = []
if empty(glob("/usr/bin/task"))
   call add(g:pathogen_disabled, 'vim-taskwarrior')
endif

:execute pathogen#infect()
" for more advanced stuff:
"

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


" Show detailed help.
let g:bufExplorerDetailedHelp=1
" By default sort files by path
let g:bufExplorerSortBy='fullpath'

" In calendar start the week with Monday
let g:calendar_monday = 1
" Show week number
let g:calendar_weeknm = 1 " 1

" <folders>
    let vimDir = '$HOME/.vimstuff'
    " Put plugins and dictionaries in this dir (also on Windows)
    "let &runtimepath.=','.vimDir
    call system('mkdir ' . vimDir)
" </folders>

" <backup zone>
    " Write a backup file for each change we make in the file (triggered at :w)
    " XXX DANGEROUS XXX after 30 minutes of work, you could end up with lots of files
    "au BufWritePre * let &bex = '-' . strftime("%Y-%m%d_%H-%M-%S") . '.vimbackup'


    let myBackupsDir = expand(vimDir . '/backups')
    call system('mkdir ' . myBackupsDir)
    let &backupdir = myBackupsDir

    " No persistent backup
    :set backup

    " Make a backup before overwriting a file, after overwriting succeeds, remove backup
    :set writebackup

    " Make a backup of the original file, if <filename>.original_file doesn't
    " exists it's created, if it does, it goes on with <filename>~ files
    ":set patchmode=.original_file
" </backup zone>

" <Persistent Undo>

    " Keep undo history across sessions by storing it in a file
    if has('persistent_undo')
        let myUndoDir = expand(vimDir . '/undodir')
        " Create dirs
        call system('mkdir ' . myUndoDir)
        let &undodir = myUndoDir
        set undofile
    endif
" </Persistent Undo>



let g:ackprg="ack"
let g:ack_default_options=" -H --nocolor --nogroup --column"


" Test to see if I can hide markdown syntax
:set conceallevel=2

" Enable omni completion for CPP
"au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main


function! TraceThis()
python << EOF
import vim
def PyFunction():
    print("Bibi")

# get the name of the current file
cfile = vim.current.buffer.name
cursor_y, cursor_x = vim.current.window.cursor
print("Bibi " + cfile)


PyFunction()
EOF
endfunction
map <silent> \q :call TraceThis()<Enter>



" Pentru a afisa culorile disponibile
" :so $VIMRUNTIME/syntax/colortest.vim


" Testing for Java

"let java_highlight_java_lang_ids=1
"let java_highlight_all=1
"let java_highlight_debug=1
"let java_highlight_java=1
let java_highlight_java_lang=1
"let java_highlight_functions=1

" <fugitive>
:map <silent> \gs :Gstatus<Enter>
" </fugitive>
"

" <go-lang>
:map <silent> <F1> <Esc>:cwindow<Enter>
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
" </go-lang>
