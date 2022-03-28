

### Check for a specific version of vim
```
if v:version > 702
    " Highlight columns 80, 120, 130
    "set colorcolumn=80,120,130
endif
```

### Check that we are on a specific platform
```
if has("win32unix")
if has("unix")
if has("win32")
```
Should finish with `endif`

### Set the runtimepath
```
set runtimepath = ~/.vim,
set runtimepath=~/vimfiles,$VIMRUNTIME
set runtimepath+=c:/Users/NeuroSys/vimfiles
set runtimepath+=~/vimfiles
```

### Add additional syntax colors 
```
autocmd syn *.c
" <in c match these operators too>
autocmd BufRead,BufNew *.c,*.C,*.h,*.H,*.cpp,*.CPP,*.hpp,*.HPP syn match       cOperator       "[\+\->=!<?;~\^\(\)\[\]:}{,\.\|&\*%~]"
autocmd BufRead,BufNew *.c,*.C,*.h,*.H,*.cpp,*.CPP,*.hpp,*.HPP syn match       cOperator       "[^/*]/[^/*]"
" </in c match these operators too>
```
