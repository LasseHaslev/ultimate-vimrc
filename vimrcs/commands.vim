autocmd cursorhold * set nohlsearch
autocmd cursormoved * set hlsearch
 
" Remove search results
command! H let @/=""

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Auto-remove trailing spaces
autocmd BufWritePre *.php :%s/\s\+$//e
