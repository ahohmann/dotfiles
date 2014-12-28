set nocompatible
let mapleader=" "
filetype off

"Vundle plugin setup.
"
"Run :PluginInstall from vim or 'vim +PluginInstall +qall' from the shell
"to install new plugins.

"Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'suan/vim-instant-markdown'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-surround'
Plugin 'tommcdo/vim-exchange'
Plugin 'mileszs/ack.vim'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'Valloric/YouCompleteMe'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"

nnoremap <leader>nt :NERDTree<cr>

call vundle#end()
filetype plugin indent on

"Use markdown instead of modula-2 for *.md files
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

"dark solarized color scheme
set t_Co=16
set background=dark
colorscheme solarized

set number
set expandtab shiftwidth=2 softtabstop=2

"Switch on incremental and highlighted search.
set incsearch ignorecase smartcase hlsearch
nnoremap <c-l> :noh<cr><c-l>

"Highlight current line in current window.
set cursorline
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

nnoremap <C-S> :w<CR>
inoremap <C-S> <Esc>:w<CR>

"More mnemonic shortcuts for splitting a window horizontally and vertically.
nnoremap <C-w>- <c-w>s
nnoremap <C-w>\| <c-w>v

nnoremap <c-q> vipgq
inoremap <c-q> <esc>vipgq

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

set statusline=%F[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

