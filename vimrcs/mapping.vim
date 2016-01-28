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

" Map <Space> to / (search)
map <space> /

" Nerdcommenter
map ,cc <Plug>NERDCommenterToggle

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

nnoremap ,z :GundoToggle<CR>

if exists(":Tabularize")
    nmap <Leader>t :Tabularize /
    " nmap <Leader>a= :Tabularize /=<CR>
    " vmap <Leader>a= :Tabularize /=<CR>
    " nmap <Leader>a: :Tabularize /:\zs<CR>
    " vmap <Leader>a: :Tabularize /:\zs<CR>
endif
