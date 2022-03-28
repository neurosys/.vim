" To install run:
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" vim-plug commands
" :PlugInstall   to install the plugins
" :PlugUpdate    updates plugins
" :PlugUpgrade   Upgrades vim-plug itself
" :PlugStatus    Check the status of plugins
" To remove delete the line containing the plugin and run :PlugClean (also restart vim)
call plug#begin()

Plug 'vimwiki/vimwiki'

" Vim intellisense https://github.com/fatih/vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Vim unimpaired, a collection of mappings https://github.com/tpope/vim-unimpaired
Plug 'tpope/vim-unimpaired'

" Fonts for with powerline symbols enabled
Plug 'powerline/fonts'

" Plugin to create tables in ascii https://github.com/godlygeek/tabular
Plug 'godlygeek/tabular'

" Plugin colection of color schemes https://github.com/flazz/vim-colorschemes
Plug 'flazz/vim-colorschemes'

" Plugin to simplify navigation in files https://github.com/easymotion/vim-easymotion
Plug 'easymotion/vim-easymotion'

" Plugin to integrate with git https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

" Look at registers trougg C-R in instert mode or '"' and '@' in normal mode https://github.com/junegunn/vim-peekaboo
Plug 'junegunn/vim-peekaboo'

" Surround stuff https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

" Plugin to launch tests from vim https://github.com/vim-test/vim-test
Plug 'vim-test/vim-test'

"""""""""""""""""""""""""""""""""""
"###      UNTESTED PLUGINS     ###"
"""""""""""""""""""""""""""""""""""

" Fuzzy finder plugin https://github.com/junegunn/fzf
" Optional dependencies:
" - bat for preview
" - delta for diffs
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Plugin to launch ranger from vim https://github.com/francoiscabrol/ranger.vim 
Plug 'francoiscabrol/ranger.vim'

" Side bar to display functions from universal-tags https://github.com/preservim/tagbar
Plug 'preservim/tagbar'

" Undotree plugin https://github.com/mbbill/undotree
Plug 'mbbill/undotree'

" Plugin to list the buffers opened https://github.com/bling/vim-bufferline
Plug 'bling/vim-bufferline'

" Plugin to create splits https://github.com/wellle/visual-split.vim
Plug 'wellle/visual-split.vim'

" Plugin to comment stuff https://github.com/preservim/nerdcommenter
Plug 'preservim/nerdcommenter'

" Plugin to have a explorer on the left side https://github.com/preservim/nerdtree
Plug 'preservim/nerdtree'

" https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'

" https://github.com/vim-airline/vim-airline-themes
Plug 'vim-airline/vim-airline-themes'

call plug#end()

