if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

alias pu-tests='vendor/bin/phpunit tests --colors=always'
alias pu='vendor/bin/phpunit --colors=always'
alias pu-stop='vendor/bin/phpunit --colors=always --stop-on-failure'

alias ctags-traits='ctags -R --exclude=.git --exclude=node_modules --PHP-kinds=+cf --regex-php=/^[ \t]*trait[ \t]+([a-z0_9_]+)/\1/t,traits/i'

alias ctags-laravel='ctags -R --exclude=.git --exclude=node_modules --PHP-kinds=+cf'

alias art='php artisan'

alias xampp='cd c:/xampp/htdocs'
alias xampp-l='cd c:/xampp/htdocs/laravel'

alias repos='cd c:/Code/Repos'
alias train='cd c:/training'
alias train-js='cd c:/training/js'
alias code='cd c:/Code/'
alias gvim='C:/Program\ Files\ \(x86\)/Vim/vim74/gvim.exe'

alias gc='git commit -m'
alias gaa='git add .'
alias go='c:/go/bin/go'

