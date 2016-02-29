function! Foldxpr_wiki()

    let l1 = getline(v:lnum)
    if l1 =~ '^\s*$'
        " ignore empty lines
        return '='
    elseif l1 =~ '\s= .*$'
        return '>1'
    elseif l1 =~ '\s== .*$'
        return '>2'
    elseif l1 =~ '\s=== .*$'
        return '>3'
    elseif l1 =~ '\s==== .*$'
        return '>4'
    elseif l1 =~ '\s===== .*$'
        return '>5'
    elseif l1 =~ '\s====== .*$'
        return '>6'
    endif
    return '=' 
endfunc

setlocal foldmethod=expr
setlocal foldenable
setlocal foldlevelstart=2
setlocal foldnestmax=2
setlocal foldexpr=Foldxpr_wiki()
setlocal syn=asciidoc
color molokai
"setlocal foldcolumn=0
"setlocal foldlevel=0
setlocal foldminlines=4
