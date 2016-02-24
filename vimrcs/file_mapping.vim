" Edit git ignore file
nmap <leader>gi :e .gitignore<cr>

" Shortcuts for editing vimrc files
nmap <leader>ev :e ~/.vim/runtime/vimrcs/<cr>
nmap <leader>evi :e ~/.vim/runtime/vimrcs/import.vim<cr>
nmap <leader>evfm :e ~/.vim/runtime/vimrcs/file_mapping.vim<cr>
nmap <leader>evf :e ~/.vim/runtime/vimrcs/functions.vim<cr>
nmap <leader>evc :e ~/.vim/runtime/vimrcs/commands.vim<cr>
nmap <leader>evm :e ~/.vim/runtime/vimrcs/mapping.vim<cr>
nmap <leader>evo :e ~/.vim/runtime/vimrcs/options.vim<cr>
nmap <leader>evp :e ~/.vim/runtime/vimrcs/plugins.vim<cr>

" Edit todo list for project
nmap <leader>todo :e todo.txt<cr>

" Gitignore
nmap <leader>gig :e .gitignore<cr>

" Laravel generators
nmap <leader>lgc :! php artisan make:controller 
nmap <leader>lgm :! php artisan make:model 
nmap <leader>lgr :! php artisan make:request 
nmap <leader>lgs :! php artisan make:seed 
nmap <leader>lgt :! php artisan make:test 
nmap <leader>lgj :! php artisan make:job 
nmap <leader>lgp :! php artisan make:provider 

" Run gulp command
nmap <leader>g :! gulp<cr>
nmap <leader>gf :e gulpfile.js<cr>
nmap <leader>env :e .env<cr>
" nmap <leader>gulpw :! gulp watch<cr>

" Laravel framework commons
nmap <leader>lr :e app/Http/routes.php<cr>
nmap <leader>lca :e config/app.php<cr>111G$%k
nmap <leader>lcd :e config/database.php<cr>
nmap <leader>lc :e composer.json<cr>
nmap <leader>lp :e package.json<cr>
nmap <leader>lb :e bower.json<cr>
nmap <leader>lg :e gulpfile.js<cr>
nmap <leader>le :e .env<cr>

" Bash profile
nmap <leader>bp :e ~/.zshrc<cr>G
