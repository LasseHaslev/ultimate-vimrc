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

" Perform all your vim insert mode completions with Tab
Plugin 'ervandew/supertab'

" A code-completion engine for Vim
" Plugin 'Valloric/YouCompleteMe'

" UltiSnips - The ultimate snippet solution for Vim.
if v:version >= 704
Plugin 'SirVer/ultisnips'
endif

" vim-snipmate default snippets (Previously snipmate-snippets)
Plugin 'honza/vim-snippets'

" Twitter Bootstrap 3 Snippets for Vim
Plugin 'chrisgillis/vim-bootstrap3-snippets'

" fugitive.vim: a Git wrapper so awesome, it should be illegal
Plugin 'tpope/vim-fugitive'

" Search Dash.app from Vim
Plugin 'rizzatti/dash.vim'

" Maintains a history of previous yanks, changes and deletes
Plugin 'vim-scripts/YankRing.vim'

" SIMPLE TODO IN VIM
Plugin 'vitalk/vim-simple-todo'

" A vim plugin to accelerate up-down moving!
Plugin 'rhysd/accelerated-jk'

" Gundo.vim is Vim plugin to visualize your Vim undo tree.
Plugin 'sjl/gundo.vim'

" Vim script for text filtering and alignment
Plugin 'godlygeek/tabular'

" Vim syntax highlighting for Vue components.
" Plugin 'posva/vim-vue'

" Basic syntax highlight for Vue.js components
Plugin 'darthmall/vim-vue'

" Syntax highlighting for Stylus.
Plugin 'wavded/vim-stylus'

" vinegar.vim: combine with netrw to create a delicious salad dressing
Plugin 'tpope/vim-vinegar'

" Vim plugin for the_silver_searcher, 'ag', a replacement for the Perl module / CLI script 'ack' 
Plugin 'rking/ag.vim'

" Global search and replace for VI
Plugin 'skwp/greplace.vim'

" Distraction-free writing in Vim
Plugin 'junegunn/goyo.vim'

" Low-contrast Vim color scheme based on Seoul Colors
Plugin 'junegunn/seoul256.vim'

" Up-to-date PHP syntax file (5.3–5.6 support)
Plugin 'StanAngeloff/php.vim'

" types "use" statements for you
Plugin 'arnaud-lb/vim-php-namespace'

" Markdown preview for vim
Plugin 'suan/vim-instant-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
