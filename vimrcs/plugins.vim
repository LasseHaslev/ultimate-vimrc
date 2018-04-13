" Plugs for vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include plugin manager
call plug#begin('~/.vim/plugged')

" Colorscheme xoria256
Plug 'fugalh/desert.vim'

" Navigation menu
" https://github.com/scrooloose/nerdtree
Plug 'scrooloose/nerdtree'

" Fuzzy file, buffer, mru, tag, etc finder.
" https://github.com/kien/ctrlp.vim
Plug 'kien/ctrlp.vim'

" Vim plugin for intensely orgasmic commenting
Plug 'scrooloose/nerdcommenter'

" lean & mean status/tabline for vim that's light as air
Plug 'bling/vim-airline'

" Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more.
Plug 'tpope/vim-surround'

" Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc.
Plug 'Raimondi/delimitMate'

" True Sublime Text style multiple selections for Vim
Plug 'terryma/vim-multiple-cursors'

" Syntax checking hacks for vim
Plug 'scrooloose/syntastic'

""" Custom plugins to match my workflow """

" A Vim plugin for visually displaying indent levels in code
Plug 'nathanaelkane/vim-indent-guides'

" emmet for vim
Plug 'mattn/emmet-vim'

" Perform all your vim insert mode completions with Tab
Plug 'ervandew/supertab'

" UltiSnips - The ultimate snippet solution for Vim.
if v:version >= 704
Plug 'SirVer/ultisnips'
endif

" Maintains a history of previous yanks, changes and deletes
Plug 'vim-scripts/YankRing.vim'

" A vim plugin to accelerate up-down moving!
Plug 'rhysd/accelerated-jk'

" vinegar.vim: combine with netrw to create a delicious salad dressing
" Press - in any buffer to hop up to the directory listing and seek to the file you just came from. Keep bouncing to go up, up, up. Having rapid directory access available changes everything.
Plug 'tpope/vim-vinegar'

" Vim plugin for the_silver_searcher, 'ag', a replacement for the Perl module / CLI script 'ack' 
Plug 'rking/ag.vim'

" Global search and replace for VI
Plug 'skwp/greplace.vim'

" types "use" statements for you
Plug 'arnaud-lb/vim-php-namespace', { 'for': 'php' }

" Markdown preview for vim
Plug 'suan/vim-instant-markdown', { 'for': 'markdown', 'do': '!npm -g install instant-markdown-d' }

" VIM Php Refactoring Toolbox 
Plug 'adoy/vim-php-refactoring-toolbox', { 'for': 'php' }

" phpcd - A Intelligent/Smart PHP Complete Daemon Plug for Vim/NeoVim https://github.com/lvht/phpcd.vim
" Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }

" Use FriendsOfPHP/PHP-CS-Fixer (PHP formatter)
Plug 'stephpy/vim-php-cs-fixer', { 'for': 'php', 'do': '!brew install php-cs-fixer' }

" vim-snipmate default snippets (Previously snipmate-snippets)
Plug 'honza/vim-snippets'

" Personal vim snippets
Plug 'LasseHaslev/vim-snippets', {'name': 'personal-vim-snippets'}

" Adds ";" to end of line
Plug 'LasseHaslev/vim-period'

" A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
Plug 'airblade/vim-gitgutter'

" All of your Plugs must be added before the following line
call plug#end()
filetype plugin indent on    " required
