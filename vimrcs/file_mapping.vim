" Shortcut for editing vim_rc file
nmap ,vrc :e ~/.vim_runtime/my_configs.vim<cr>

" Edit todo list for project
nmap ,todo :e todo.txt<cr>

" Laravel generators
nmap ,lgc :! php artisan make:controller 
nmap ,lgm :! php artisan make:migration 
nmap ,lgr :! php artisan make:request 

" Run gulp command
nmap ,gulp :! gulp<cr>
" nmap ,gulpw :! gulp watch<cr>

" Laravel framework commons
nmap <leader>lr :e app/routes.php<cr>
nmap <leader>lca :e app/config/app.php<cr>81Gf(%O
nmap <leader>lcd :e app/config/database.php<cr>
nmap <leader>lc :e composer.json<cr>
