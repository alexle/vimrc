color desert
set guifont=lucida

set nocompatible                 " no compatibility with old vi
syntax enable                    " syntax highlighting
filetype off                     " disable automatic file detection

" white space
set nowrap
set tabstop=3                    " a tab is three spaces
set shiftwidth=3                 " number of spaces to use for autoindenting
set expandtab                    " use spaces not tabs
set nosmarttab
set shiftround                   " use multiple of shiftwidth when indenting with '<' and '>'
set autoindent                   " always set autoindenting on
set backspace=indent,eol,start   " backspace through everything in indent
set softtabstop=3                " makes multiple spaces tabstops, backspace will delete # spaces

" searching
set ignorecase                   " ignore case when searching
set smartcase                    " ignore case if search pattern is all lowercase, case-sensitive otherwise
set showmatch                    " set show matching parenthesis
set hlsearch                     " highlight search terms
set incsearch                    " show search matches as you type

" file management
set nobackup                     " turn off automatic creation of backup files
set nowritebackup                " makes vim write buffer to file
set noswapfile                   " turn off swap files

set guioptions=em                " e = show tab bar, m = show menu bar
set showtabline=2                " ensures tab bar always displayed
set tags+=tags;                  " map ctags path

" gui size and positioning
set lines=50 columns=130
winpos 100 100

" navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" map leader key to ,
let mapleader = ","

" map ; to command key
nnoremap ; :

" map jj key combination to esc key
inoremap jj <esc>

" quick nerd tree toggle
nnoremap <leader>n :NERDTreeToggle<CR>

" execute chisel.py from any of my github posts
:nnoremap <leader>c <Esc>:cd ..<CR>:silent !python chisel.py<CR>:cd %:p:h<CR>

