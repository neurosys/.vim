
" Use UTF8 encoding
:set encoding=utf8

" Don't append a \n at the end of file even if POSIX says so
:set nofixendofline

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

" Do not wrap lines (useful in 60% cases, very annoying in rest)
set nowrap

" I want search highlighting on
set hls

" Simulate Alt pressing (sincer nu stiu la ce-mi foloseste)
set si is

" Use line number when printing (on paper)
" set printoptions=number:y

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

" Let me choose how long a text line can be (by default 78)
set textwidth=0

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
set tags=tags;$HOME

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

