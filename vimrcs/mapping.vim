" NERDTree toggle
nmap ,nn :NERDTreeToggle<cr>

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","
 
" Fast saves
nmap <leader>w :w!<cr>
 
" Down is really the next line
nnoremap j gj
nnoremap k gk

"Easy escaping to normal model
imap jj <esc>

" paste multiple times
xnoremap p pgvy
 
"Auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>
 
"easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"Resize vsplit
nmap <C-v> :vertical resize +5<cr>
nmap <Leader>25 :vertical resize 40<cr>
nmap <Leader>50 <c-w>=
nmap <Leader>75 :vertical resize 120<cr>

" Create split below
nmap :sp :rightbelow sp<cr>

"Load the current buffer in Chrome
" nmap ,c :!open -a Google\ Chrome<cr>

" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>
 
" Create/edit file in the current directory
nmap :ed :edit %:p:h/

" CtrlP Stuff
" Familiar commands for file/symbol browsing
map <C-f> :CtrlP<cr>
map <C-r> :CtrlPBufTag<cr>
" map <C-r> :CtrlPMRUFiles<cr>
map <leader>fr :CtrlPClearCache<cr>

" Vim PHP namespace
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>na <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>na :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>

"Sort PHP use statements
"http://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>

" Ctags
" Go to the original method
map <leader>b <C-]>
" Next tag
map <leader>bn :tn<cr>
" previus tag
map <leader>bp :tp<cr>
" Back out to the original file
map <leader>bo <C-t>
" Update Ctag file
nmap <leader>ct :!ctags -R<cr>
nmap <leader>lct<space> :!ctags -R --exclude=node_modules --exclude=database --exclude=Graphs --exclude=storage --exclude=public --exclude=vendor/phpspec --exclude=vendor/phpunit
nmap <leader>lct :!ctags -R --exclude=node_modules --exclude=database --exclude=Graphs --exclude=storage --exclude=public --exclude=vendor/phpspec --exclude=vendor/phpunit<cr>

" Map <Space> to / (search)
map <space> /
" Remove search results
nmap <Leader><space> :nohlsearch<cr>
set incsearch

" Nerdcommenter
map <leader>cc <Plug>NERDCommenterToggle

" Emmet
let g:user_emmet_leader_key='<C-e>'

" Multiple cursors
let g:multi_cursor_next_key='<C-s>'
let g:multi_cursor_exit_from_insert_mode=0

" Quick mapping for the :sh command
nmap <leader>sh :sh<cr>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" Function for start using (http://vimawesome.com/plugin/accelerated-jk-superman)
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

" greplace
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

" Search / Search Replace
" Search sidewide
nmap <leader>s :Ag 
" nmap <leader>s :Hello

nmap <leader>so :so %<cr>

" Search and replace project wide
nmap <leader>sr :Gsearch<cr> 

" Mapping for exporting DOT ( 'brew install graphviz' )
nmap <leader>dot :w<cr>:!dot -Tpng % -o %.png<cr>:!imgcat %.png<cr>

" Set mapping for php-refactoring
let g:vim_php_refactoring_use_default_mapping = 0
nnoremap <unique> <Leader>ep :call PhpExtractClassProperty()<CR>
vnoremap <unique> <Leader>em :call PhpExtractMethod()<CR>
