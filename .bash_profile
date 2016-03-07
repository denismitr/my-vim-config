if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

alias phpunit='vendor/bin/phpunit tests --colors=always'

alias ctags-traits='ctags -R --exclude=.git --exclude=node_modules --PHP-kinds=+cf --regex-php=/^[ \t]*trait[ \t]+([a-z0_9_]+)/\1/t,traits/i'

alias ctags-laravel='ctags -R --exclude=.git --exclude=node_modules --PHP-kinds=+cf'

alias art='php artisan'

alias xampp='cd c:/xampp/htdocs'

alias repos='cd c:/Code/Repos'
alias train='cd c:/training'
alias train-js='cd c:/training/js'