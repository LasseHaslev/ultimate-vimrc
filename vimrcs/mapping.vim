" NERDTree toggle
nmap ,nn :NERDTreeToggle<cr>

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

nmap <leader>m :marks<cr>
 
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

" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

" CtrlP Stuff
" Familiar commands for file/symbol browsing
map <C-f> :CtrlP<cr>
map <leader><C-f> :CtrlPBuffer<cr>
map <C-r> :CtrlPBufTag<cr>
" map <C-r> :CtrlPMRUFiles<cr>
map <leader>fr :CtrlPClearCache<cr><C-f>

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

" Definition navigation
map <leader>b :LspDefinition<cr>
" Back in buffer history
map <leader>bo :bprevious<CR>

" Search - Map <Space> to /
map <space> /
" Remove search results
nmap <Leader><space> :nohlsearch<cr>
set incsearch

" Nerdcommenter
map <leader>cc <Plug>NERDCommenterToggle

" Emmet
let g:user_emmet_leader_key='<C-e>'

" Multiple cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key      = '<C-s>'
" let g:multi_cursor_select_all_word_key = '<A-s>'
" let g:multi_cursor_start_key           = 'g<C-n>'
" let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-s>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" Function for start using (http://vimawesome.com/plugin/accelerated-jk-superman)
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

" greplace
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

" Search and replace project wide
nmap <leader>sr :Gsearch<cr> 

" Toggle spellcheck
map <Leader>sc :setlocal spell!<cr>

" stephpy/vim-php-cs-fixer
nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<CR>
nnoremap <silent><leader>pfd :call PhpCsFixerFixDirectory()<CR>

" Set mapping for php-refactoring
let g:vim_php_refactoring_use_default_mapping = 0
nnoremap <unique> <Leader>ep :call PhpExtractClassProperty()<CR>
vnoremap <unique> <Leader>em :call PhpExtractMethod()<CR>
