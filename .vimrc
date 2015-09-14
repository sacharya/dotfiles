set backspace=2         " backspace in insert mode works like normal editor
syntax on               " syntax highlighting
set hlsearch            " highlight all searches
set incsearch           " incremental searches
filetype indent on      " activates indenting for files
set autoindent          " auto indenting
set number              " line numbers
colorscheme desert      " colorscheme desert
set nobackup            " get rid of anoying ~file

set expandtab           " Use spaces instead of tabs
set smarttab            " Be smart when using tabs ;)

set shiftwidth=2        " 1 tab == 2 spaces
set tabstop=2
set textwidth=79

" Golang support
set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

