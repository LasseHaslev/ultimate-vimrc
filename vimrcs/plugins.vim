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

" Vim plugin for intensely orgasmic commenting
Plugin 'scrooloose/nerdcommenter'

" lean & mean status/tabline for vim that's light as air
Plugin 'bling/vim-airline'

" Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more.
Plugin 'tpope/vim-surround'

" Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc.
Plugin 'Raimondi/delimitMate'

" True Sublime Text style multiple selections for Vim
Plugin 'terryma/vim-multiple-cursors'

" Syntax checking hacks for vim
Plugin 'scrooloose/syntastic'

""" Custom plugins to match my workflow """

" A Vim plugin for visually displaying indent levels in code
Plugin 'nathanaelkane/vim-indent-guides.git'

" emmet for vim
Plugin 'mattn/emmet-vim'

" Ultimate auto-completion system for Vim. http://www.vim.org/scripts/script.php?script_id=2620
Plugin 'Shougo/neocomplcache.vim'

" UltiSnips - The ultimate snippet solution for Vim.
Plugin 'SirVer/ultisnips'

" vim-snipmate default snippets (Previously snipmate-snippets)
Plugin 'honza/vim-snippets'

" Bootstrap 3.2 markup snippets for vim-snipmate
Plugin 'bonsaiben/bootstrap-snippets'

" fugitive.vim: a Git wrapper so awesome, it should be illegal
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
