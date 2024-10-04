" Required for operations modifying multiple buffers like rename.
set hidden

"let g:LanguageClient_serverCommands = {
"    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
"    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
"    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
"    \ 'python': ['/usr/local/bin/pyls'],
"    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
"    \ 'cpp': ['clangd'],
"    \ }

" note that if you are using Plug mapping you should not use `noremap` mappings.
nmap <F5> <Plug>(lcn-menu)
" Or map each action separately
nmap <silent>K <Plug>(lcn-hover)
nmap <silent> gd <Plug>(lcn-definition)
nmap <silent> <F2> <Plug>(lcn-rename)

let g:LanguageClient_loggingFile = '/home/neurosys/cpp_lsp.log'
let g:LanguageClient_loggingLevel = 'DEBUG'

" '--compile-commands-dir=/home/neurosys/work/liberty/primary/build/compile_commands.json'
" '-I/usr/include/c++/11', '-I/usr/include', '-I/usr/include/log4cxx', '-I/usr/include/libxml2'

"let g:LanguageClient_serverCommands = {
"  \ 'cpp': ['clangd', '--background-index', '--log=verbose', '--pretty'],
"  \ }

" let g:LanguageClient_serverStderr = '/tmp/clangd.stderr'

" function SetLSPShortcuts()
  " ...
  " Previous bindings
  " ...
"   nnoremap <leader>ll :call LanguageClient#debugInfo()<CR>
" endfunction()
