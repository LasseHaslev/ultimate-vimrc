" Shortcuts for editing vimrc files
nmap ,vrci :e ~/.vim/runtime/vimrcs/import.vim<cr>
nmap ,vrcfm :e ~/.vim/runtime/vimrcs/file_mapping.vim<cr>
nmap ,vrcf :e ~/.vim/runtime/vimrcs/functions.vim<cr>
nmap ,vrcc :e ~/.vim/runtime/vimrcs/commands.vim<cr>
nmap ,vrcm :e ~/.vim/runtime/vimrcs/mapping.vim<cr>
nmap ,vrco :e ~/.vim/runtime/vimrcs/options.vim<cr>
nmap ,vrcp :e ~/.vim/runtime/vimrcs/plugins.vim<cr>

" Edit todo list for project
nmap ,todo :e todo.txt<cr>

" Laravel generators
nmap ,lgc :! php artisan make:controller 
nmap ,lgm :! php artisan make:model 
nmap ,lgr :! php artisan make:request 
nmap ,lgs :! php artisan make:seed 

" Run gulp command
nmap ,g :! gulp<cr>
" nmap ,gulpw :! gulp watch<cr>

" Laravel framework commons
nmap <leader>lr :e app/Http/routes.php<cr>
nmap <leader>lca :e config/app.php<cr>111G$%kO
nmap <leader>lcd :e config/database.php<cr>
nmap <leader>lc :e composer.json<cr>
nmap <leader>lb :e bower.json<cr>
nmap <leader>lg :e gulpfile.js<cr>
