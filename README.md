# Ultimate .vimrc
This is **my personal version** of the ultimate basic vim setup, based on [**JeffreyWay/.vimrc**](https://gist.github.com/JeffreyWay/6753834) and some inspiration from [**Amix/vimrc**](https://github.com/amix/vimrc).

This branch is based on the [ultimate-vimrc](https://github.com/LasseHaslev/ultimate-vimrc), that is meant as a general starting point for vim, and contains the essentiels building blocks for a powerfull vim editor.

This personal version of is modified to be perfect for my workflow, where I mostly work with html, javascript and php with Laravel.

**I really recomend checking out this serie [Vim Mastery](https://laracasts.com/series/vim-mastery) from [Jeffrey Way](https://twitter.com/jeffrey_way) to get a full understanding of the power of vim text editor.**

##Install
I recomend using MacVim. Make sure you have the lastest version of [MacVim](https://code.google.com/p/macvim/) installed.

Then run the following line in your terminal

```sh -c "$(curl -fsSL https://raw.githubusercontent.com/LasseHaslev/ultimate-vimrc/personal/install.sh)"```

**Restart vim and you are good to go!**

###Configuration
####Folder structure
The folder and file structure is created to be as simple and clear as posible.

All files is in ~/.vim/vimrcs/ are structured in different files for different purposes.
You can add or modify the content in each file to suit your needs.

For more information please check out the content of each file.

######Import 
> ~/.vim/runtime/vimrcs/import.vim

The import file loads all the other files in this bundle.
If you add a new .vim file, remember to add it to this file.

######File mapping 
> ~/.vim/runtime/vimrcs/file_mapping.vim

This file takes care of all the map– shortcuts to the other files.

######Functions 
> ~/.vim/runtime/vimrcs/functions.vim

This is where all the vim functions are stored.

######Commands 
> ~/.vim/runtime/vimrcs/commands.vim

This file handles all the commands.

######Mappings 
> ~/.vim/runtime/vimrcs/mapping.vim

This is where all the key mappings and plugin key- modifications are stored.

######Options 
> ~/.vim/runtime/vimrcs/options.vim

Here you can store all vim options, like color, sizes and other modifications.

######Plugins 
> ~/.vim/runtime/vimrcs/plugins.vim

This is where all the plugins are stored.

We are using [Vundle](https://github.com/gmarik/Vundle.vim) to handle the installation of our plugins.
If you want to install more plugins just add them to this file and run:
>:Pluginstall

####!Important
Remember to refresh vim after you have done changes to any of these files.
