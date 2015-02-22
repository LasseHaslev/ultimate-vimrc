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
nmap <leader>lr :e app/Http/routes.php<cr>
nmap <leader>lca :e config/app.php<cr>111G$%kO
nmap <leader>lcd :e config/database.php<cr>
nmap <leader>lc :e composer.json<cr>
