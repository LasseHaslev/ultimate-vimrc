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
nmap <leader>ct<space> :!ctags -R --exclude=node_modules --exclude=vendor --exclude=database --exclude=Graphs --exclude=storage --exclude=public 
nmap <leader>ct :!ctags -R --exclude=node_modules --exclude=vendor --exclude=database --exclude=Graphs --exclude=storage --exclude=public<cr>

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

" Config for dash.vim
nmap <silent> <leader>d <Plug>DashSearch
nmap <silent> <leader>dg <Plug>DashGlobalSearch

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

nnoremap ,z :GundoToggle<CR>

" Goyo
let g:goyo_width = 100
nmap <leader>vs :Goyo<cr>

" Search / Search Replace
" Search sidewide
nmap <leader>s :Ag 
" Search and replace project wide
nmap <leader>sr :Gsearch<cr> 

" Change colors
let g:selected_colorscheme = 0
function! SwapCol()
    if g:selected_colorscheme
        let g:selected_colorscheme = 0
        :colorscheme xoria256
    else
        let g:selected_colorscheme = 1
        :colorscheme seoul256
    endif
endfunction
nmap <leader>co :call SwapCol()<cr>

" Mapping for exporting DOT ( 'brew install graphviz' )
nmap <leader>dot :w<cr>:!dot -Tpng % -o %.png<cr>:!imgcat %.png<cr>

if exists(":Tabularize")
    nmap <Leader>t :Tabularize /
    " nmap <Leader>a= :Tabularize /=<CR>
    " vmap <Leader>a= :Tabularize /=<CR>
    " nmap <Leader>a: :Tabularize /:\zs<CR>
    " vmap <Leader>a: :Tabularize /:\zs<CR>
endif
