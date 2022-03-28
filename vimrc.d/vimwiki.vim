
let vimwiki_camel_case=0

" Stop folding
" Value           Description  
" ''              Disable folding.  
" 'expr'          Folding based on expression (folds sections and code blocks).  
" 'syntax'        Folding based on syntax (folds sections; slower than 'expr').  
" 'list'          Folding based on expression (folds list subitems; much slower).
let vimwiki_folding=''
let g:vimwiki_dir_link = 'index' " automatically resolve folder links as folder/index.wiki
let g:vimwiki_hl_headers = 1 " highlight headers with different colors
let g:vimwiki_hl_cb_checked = 1 " highlight completed tasks
let g:vimwiki_global_ext = 0 " Don't let vimwiki consider every markdown file as a wiki



" Define a list of wikis (with syntax and extension for files used)
" syntax options are ['default', 'markdown', 'media']
" \ws to list the available wikis and enter them
let g:vimwiki_list = [{'path': '~/.vimwiki/main', 'syntax': 'markdown', 'ext': 'md'},
            \ {'path': '~/.vimwiki/references', 'syntax': 'markdown', 'ext': 'md'}]

"let wiki = {}
"let wiki.path = '~/vimwiki/'
""let wiki.syntax = 'default'
"let wiki.syntax = 'markdown'
"let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}
"let wiki.auto_tags = 0
"let g:vimwiki_list = [wiki]
" ????
let vimwiki_list_ignore_newline=0
