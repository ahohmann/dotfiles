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
Plugin 'terryma/vim-expand-region'
Plugin 'bling/vim-airline'
Plugin 'tommcdo/vim-exchange'
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'nelstrom/vim-qargs'
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-entire'
Plugin 'bkad/CamelCaseMotion'
Plugin 'mtth/scratch.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

let g:UltiSnipsExpandTrigger="<M-s>e>"
let g:UltiSnipsJumpForwardTrigger="<M-s>j>"
let g:UltiSnipsJumpBackwardTrigger="<M-s>k"
let g:UltiSnipsEditSplit="vertical"

noremap <leader>nt :NERDTree<cr>
noremap <leader>nf :NERDTreeFind<cr>

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
set hidden

set incsearch ignorecase smartcase hlsearch
nnoremap <leader>h :noh<cr>

"Highlight current line in current window.
set cursorline
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

nnoremap <C-S> :w<CR>
inoremap <C-S> <Esc>:w<CR>

"More mnemonic shortcuts for splitting a window horizontally and vertically.
nnoremap <C-w>- <c-w>s
nnoremap <C-w>\| <c-w>v

"Reformat current paragraph.
nnoremap <c-q> vipgq
inoremap <c-q> <esc>vipgq

nnoremap <leader>ve :edit $MYVIMRC<cr>
nnoremap <leader>vs :source $MYVIMRC<cr>

"Let %% expand on the command line to the path of the active buffer (see
"Practical Vim, Tip 41).
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

"set statusline=%F[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

let g:EclimCompletionMethod = 'omnifunc'
noremap <leader>jr :JavaRename 
noremap <leader>jx :Java<cr>
noremap <leader>ji :JavaImport<cr>
noremap <leader>jio :JavaImportOrganize<cr>
noremap <leader>jgc :JavaConstructor<cr>
noremap <leader>jgg :JavaGet<cr>
noremap <leader>jgs :JavaGetSet<cr>

"less aggressive update of instant markdown (I ran into situations where the
"instant markdown server stalled the whole system).
let g:instant_markdown_slow = 1


