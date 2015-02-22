" Plugins for vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Colorscheme xoria256
Plugin 'vim-scripts/xoria256.vim'

" Navigation menu
" https://github.com/scrooloose/nerdtree
Plugin 'scrooloose/nerdtree'

" Fuzzy file, buffer, mru, tag, etc finder.
" https://github.com/kien/ctrlp.vim
Plugin 'kien/ctrlp.vim'

" Powerline is a statusline plugin for vim
Plugin 'Lokaltog/vim-powerline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
