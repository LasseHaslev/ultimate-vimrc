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

" True Sublime Text style multiple selections for Vim
Plugin 'terryma/vim-multiple-cursors'

" Syntax checking hacks for vim
Plugin 'scrooloose/syntastic'

" Perform all your vim insert mode completions with Tab
Plugin 'ervandew/supertab'

" UltiSnips - The ultimate snippet solution for Vim.
if v:version >= 704
Plugin 'SirVer/ultisnips'
endif

" vim-snipmate default snippets (Previously snipmate-snippets)
Plugin 'honza/vim-snippets'

" fugitive.vim: a Git wrapper so awesome, it should be illegal
Plugin 'tpope/vim-fugitive'

" Maintains a history of previous yanks, changes and deletes
Plugin 'vim-scripts/YankRing.vim'

" SIMPLE TODO IN VIM
Plugin 'vitalk/vim-simple-todo'

" Vim plugin for the_silver_searcher, 'ag', a replacement for the Perl module / CLI script 'ack' 
Plugin 'rking/ag.vim'

" Global search and replace for VI
Plugin 'skwp/greplace.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
