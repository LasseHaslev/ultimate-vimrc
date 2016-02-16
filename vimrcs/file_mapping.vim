" Shortcuts for editing vimrc files
nmap ,ev :e ~/.vim/runtime/vimrcs/<cr>
nmap ,evi :e ~/.vim/runtime/vimrcs/import.vim<cr>
nmap ,evfm :e ~/.vim/runtime/vimrcs/file_mapping.vim<cr>
nmap ,evf :e ~/.vim/runtime/vimrcs/functions.vim<cr>
nmap ,evc :e ~/.vim/runtime/vimrcs/commands.vim<cr>
nmap ,evm :e ~/.vim/runtime/vimrcs/mapping.vim<cr>
nmap ,evo :e ~/.vim/runtime/vimrcs/options.vim<cr>
nmap ,evp :e ~/.vim/runtime/vimrcs/plugins.vim<cr>

" Edit todo list for project
nmap ,todo :e todo.txt<cr>

" Gitignore
nmap <leader>gig :e .gitignore<cr>

" Laravel generators
nmap ,lgc :! php artisan make:controller 
nmap ,lgm :! php artisan make:model 
nmap ,lgr :! php artisan make:request 
nmap ,lgs :! php artisan make:seed 
nmap ,lgt :! php artisan make:test 
nmap ,lgj :! php artisan make:job 
nmap ,lgp :! php artisan make:provider 

" Run gulp command
nmap ,g :! gulp<cr>
nmap ,env :e .env<cr>
" nmap ,gulpw :! gulp watch<cr>

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
