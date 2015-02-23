.vim
====

My Vim setup

== To clone this ==
git clone <repo_url>
git submodule update --init

*Optional (in case of proxy)*
git config --global http.proxy http://proxyuser:proxypwd@proxy.server.com:8080

== To add a submodule use: ==
git submodule add <git repo url> bundle/<name for future submodule>
git add .
git commit -m 'Added my submodule X'
git push origin master

== To remove a submodule (vim-rvm) ==
git submodule deinit bundle/vim-rvm
git rm bundle/vim-rvm
git rm --cached bundle/vim-rvm
