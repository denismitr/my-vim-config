"============================================================================
"" Fold lines according to the file's syntax
"============================================================================

set foldmethod=syntax

"============================================================================
" Fold lines for which the specified expression produces a fold-level
"============================================================================

set foldexpr=strlen(matchstr(getline(v:lnum),'^-*'))
set foldmethod=expr

"============================================================================
" Make folds auto-open and auto-close when the cursor moves
"over them
"============================================================================

:set foldopen=all
:set foldclose=all

"============================================================================
" Show/hide fold structure in the left margin
"============================================================================

:set foldcolumn=6
:set foldcolumn&

"============================================================================
" Turn on the ruler in the status line
"============================================================================

set ruler

set nocompatible              " be iMproved, required

set t_Co=256
set mouse=a
set cursorline
set autowriteall
set complete=.,w,b,u

filetype on
filetype indent on
filetype plugin on

call pathogen#infect()


syntax enable

set backspace=indent,eol,start			
let mapleader = '\'			  
set number     

"Tab and indent"
set shiftwidth=4
set expandtab
set smartindent
set tabstop=4
set smarttab

"--------------Mapping--------------------"

nmap <leader>ev :tabedit ~/.vimrc<cr>
nmap <leader>es :tabedit ~/.vim/snippets/


"Add NERDTree highlight removal"
nmap <leader>q :NERDTreeToggle<cr>
nmap <leader>f :tag<space>

"---------------Split Controls------------"
set splitbelow
set splitright

"Windows switch"
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"Tabs switches"
nmap tn :tabnew<space>
nmap tk :tabnext<cr>
nmap tj :tabprev<cr>
nmap th :tabfirst<cr>
nmap tl :tablast<cr>

nmap <C-y> :CtrlPBufTag<cr>
nmap <C-e> :CtrlPMRUFiles<cr>

"Other mappings"
nmap <C-s> :w<cr>
imap <C-s> :w<cr>

"Multi0cursor mapping"

let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_next_key='<C-z>'
let g:multi_cursor_prev_key='<C-q>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'


let g:ctrlp_custom_ignore = 'node_modules\|vendor\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
set wildignore+=*/vendor/**
set wildignore+=*/node_modules/**

let NERDTreeHijackNetrw = 0                                            "Prevents Nerd from killing the system"

"--------------Visuals--------------------"
colorscheme distinguished
set background=dark
"set t_CO=256

"-------------Search---------------------"

set hlsearch
set incsearch
set ignorecase
set smartcase
set regexpengine=1


"Add simple highlite removal"
nmap <leader><space> :nohlsearch<cr>

"-------------Autocomplete---------------------------"

filetype plugin on
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

"====================================================="
"-------------Laravel Specific Commands---------------"
"====================================================="

nmap <leader><leader>r :e app/Http/routes.php<cr>
nmap <leader><leader>m :!php artisan make:
nmap <leader><leader>c :e app/Http/Controllers/<cr>
nmap <leader><leader>p :e app/<cr>
nmap <leader><leader>q :e app/Http/Requests<cr>
nmap <leader><leader>v :e resources/views/<cr>
nmap <leader><leader>a :e resources/assets/<cr>
nmap <leader><leader>o :e config/<cr>
nmap <leader><leader>e :e .env<cr>
nmap <leader><leader>d :e database/<cr> 
nmap <leader><leader>t :e tests/<cr>
nmap <leader><leader>u :e public/<cr>
nmap <leader><leader>h :e app/Http/<cr>
nmap <leader><leader>x :e . <cr>

"-------------Auto Commands---------------"

"============================================================================
" Make :help appear in a full-screen tab, instead of a window
"============================================================================

augroup HelpInTabs
    autocmd!
    autocmd BufEnter  *.txt   call HelpInNewTab()
augroup END

function! HelpInNewTab ()
    if &buftype == 'help'
        "Convert the help window to a tab...
        execute "normal \<C-W>T"
    endif
endfunction

"========================================"
"Automatically source vimrc file on save"
"========================================"

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

"PHP auto namespace (insert of use)"
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>


"Make classname fully qualified"
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>

"---------------Plugins-------------------"



filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-vinegar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'crusoexia/vim-monokai'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/snipmate.vim'
Plugin 'tpope/vim-surround'
Plugin 'StanAngeloff/php.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'posva/vim-vue'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mattn/emmet-vim'
Plugin 'itchyny/lightline.vim'
Plugin 'yearofmoo/Vim-Darkmate'

call vundle#end()            " required
filetype plugin indent on    " required
