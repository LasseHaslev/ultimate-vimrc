" Style the vim
colorscheme desert

" set macligatures

set updatetime=250 " Reduce update time from 4s to 250ms

" set guifont=menlo\ for\ powerline:h40
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
set linespace=15

set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap lines
set tabstop=4                   " a tab is four spaces
set smarttab
set tags=tags
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=4                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
set timeout timeoutlen=200 ttimeoutlen=100
set visualbell           " don't beep
set noerrorbells         " don't beep
" set autowrite                   "Save on buffer switch
set autowriteall                   "Save on buffer switch
set mouse=a
syntax on                       " Set syntax color on"

" Style spellchecking
:hi SpellBad guibg=#c62525 ctermbg=224

"Show (partial) command in the status line
set showcmd

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Powerline (Fancy thingy at bottom stuff)
let g:Powerline_symbols = 'fancy'
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)


" CtrlP Stuff
" I don't want to pull up these folders/files when calling CtrlP
set wildignore+=*/vendor/**
set wildignore+=*/public/forum/**
set wildignore+=*/node_modules/**

" Remember info about open buffers on close
set viminfo^=%

" NERD Commenter
" make sure that you have filetype plugins enabled, as the script makes use of |'commentstring'| where possible (which is usually set in a filetype plugin).
filetype plugin on
let NERDSpaceDelims = 1
let g:NERDCreateDefaultMappings = 0

" delimitMate
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1

" Ultisnips
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Add vim-snippets to Ultisnips on special filetypes
autocmd BufRead,BufNewFile *.blade.php set filetype=laravel.blade.php

" Always Save everything
:au FocusLost * :wa

" set a directory to store the undo history
set undofile
set undodir=~/.vim/vimundo/ 

" vim-indent-guides
let g:indent_guides_auto_colors = 1
" Settings for vim-indent guides
let g:indent_guides_enable_on_vim_startup = 1

" stephpy/vim-php-cs-fixer
let g:php_cs_fixer_rules = "@PSR2"
let g:php_cs_fixer_config_file = $HOME . '/.vim/runtime/settings/php_cs.php'

" Open vim in fullscreen
try
    set fu
catch /^Vim\%((\a\+)\)\=:E518/
endtry

" Word wrap without line breaks in *.md files (http://vim.wikia.com/wiki/Word_wrap_without_line_breaks)
au BufRead,BufNewFile *.md setlocal wrap linebreak nolist textwidth=0 wrapmargin=0 formatoptions-=t
