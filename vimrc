" ================================================
" 					Vamsi's vimrc
"=================================================

" ------------------------------------------------
" Plugins
" ------------------------------------------------
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'tpope/vim-surround'
Plugin 'junegunn/fzf'
Plugin 'itchyny/lightline'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'w0rp/ale'
Plugin 'scrooloose/syntastic'
Plugin 'valloric/youcompleteme'

"All of your plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" ===============================================
" General
" ===============================================

" Set how many lines of history VIM has to remember
set history=1000

" Set to auto read when a file is changed in the disk
set autoread

" Map leader to space
let mapleader = " "

" Fast saving (<space> + w)
nmap <leader>w = w!<cr>

filetype on

" ===============================================
" User Interface
" ===============================================

" Set 7 lines to the cursor -when moving vertically using j and k
set so=7

" Tab completion
set wildmenu
set wildmode=list:longest,full

" Show current position
set ruler

" Height of the command bar
set cmdheight=2

" Bring backspace to life
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Enable incremental search
set incsearch

" Show matching brackets
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" Add a bit extra margin to the left
set foldcolumn=1

" ===============================================
" Colors and Fonts
" ===============================================

" Enable syntax highlighting
syntax enable

" Set utf8 as standard encoding
set encoding=utf8

" ===============================================
" Tab and Indent
" ===============================================

" Enable smarttab to insert correct number of spaces according to indentation
set smarttab

set nu

set ruler

set mouse=a

set tabstop=4

" Set auto indent
set autoindent

" Set smartindent
set smartindent

" Wrapping of lines
set wrap

" ===============================================
" Moving around, tabs, windows and buffers
" ===============================================

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all buffers
map <leader>ba :bufdo bd<cr>

" Navigating through buffers
nnoremap L :bnext<cr>
nnoremap H :bprevious<cr>

" Useful mappings for managing tabs
nnoremap K :tabnext<cr>
nnoremap J :tabnext<cr>
map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" ===============================================
" Status Line
" ===============================================

" Always show the status line
set laststatus=2

" ===============================================
" Key Mappings
" ===============================================

map 0 ^
