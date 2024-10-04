
" Default fzf layout
" " - Popup window (center of the screen)
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }

map <silent> \ff :Files<Enter>
map <silent> \bb :Buffers<Enter>
map <silent> \tt :Tags<Enter>
map <silent> \tb :BTags<Enter>
map <silent> \fm :Marks<Enter>
map <silent> \gf :GitFiles?<Enter>
map <silent> \gg :GitFiles<Enter>

map <silent> \gc :Commits<Enter>
map <silent> \gb :Bcommits?<Enter>

