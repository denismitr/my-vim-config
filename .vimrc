set nocompatible              " be iMproved, required

set t_Co=256
set mouse=a
set cursorline

filetype on
filetype indent on
filetype plugin on

call pathogen#infect()

set regexpengine=1

syntax enable

set backspace=indent,eol,start			
let mapleader = '\'			  
set number     

"Tab and indent"
set shiftwidth=4
set expandtab
set smartindent
set tabstop=4

"--------------Mapping--------------------"

nmap <leader>ev :tabedit ~/.vimrc<cr>
nmap <leader>es :tabedit ~/.vim/snippets/

"Add simple highlite removal"
nmap <leader><space> :nohlsearch<cr>

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

nmap <C-R> :CtrlPBufTag<cr>
nmap <C-e> :CtrlPMRUFiles<cr>

"Multi0cursor mapping"

let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-g>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'


let g:ctrlp_custom_ignore = 'node_modules\|vendor\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
set wildignore+=*/vendor/**
set wildignore+=*/node_modules/**

let NERDTreeHijackNetrw = 0                                            "Prevents Nerd from killing the system"

"--------------Visuals--------------------"
colorscheme mango
set background=dark
"set t_CO=256

"-------------Search---------------------"

set hlsearch
set incsearch



"-------------Autocomplete---------------------------"

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

"-------------Laravel Specific Commands---------------"

nmap <leader>lr :e app/Http/routes.php<cr>


"-------------Auto Commands---------------"

"Automatically source vimrc file on save"
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

Plugin 'tpope/vim-vinegar'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'crusoexia/vim-monokai'

Plugin 'msanders/snipmate.vim'

Plugin 'tpope/vim-surround'

Plugin 'StanAngeloff/php.vim'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'arnaud-lb/vim-php-namespace'

call vundle#end()            " required
filetype plugin indent on    " required
