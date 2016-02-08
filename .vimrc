syntax enable 

set backspace=indent,eol,start			
let mapleader = '\'			  
set number                                      

"--------------Mapping--------------------"

nmap <leader>ev :tabedit ~/.vimrc<cr>

"Add simple highlite removal"
nmap <leader><space> :nohlsearch<cr>



"---------------Split Controls------------"
set splitbelow
set splitright


nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <c-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

nmap <c-R> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>


let g:ctrlp_custom_ignore = 'node_modules\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"--------------Visuals--------------------"
colorscheme atom-dark
set t_CO=256

"-------------Search---------------------"

set hlsearch
set incsearch



"-------------Auto Commands---------------"

"Automatically source vimrc file on save"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END




"---------------Plugins-------------------"


set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-vinegar'

Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()            " required
filetype plugin indent on    " required
