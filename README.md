# Ultimate .vimrc
This is **my personal version** of the ultimate basic vim setup, based on [**JeffreyWay/.vimrc**](https://gist.github.com/JeffreyWay/6753834) and inspired by [**Amix/vimrc**](https://github.com/amix/vimrc).

This personal version of is modified to be perfect for my workflow.
- PHP with [Laravel](https://laravel.com)
- HTML, CSS and javascript

> I really recommend checking out [Vim Mastery](https://laracasts.com/series/vim-mastery) series from [Jeffrey Way](https://twitter.com/jeffrey_way) to get a full understanding of the power of vim text editor.

## Install

I recommend using MacVim. Make sure you have the last version of [MacVim](https://code.google.com/p/macvim/) installed.

Make sure you have [npm](https://brew.sh/index_no) and [Homebrew](https://brew.sh/index_no) installed.

Then run the following line in your terminal

```sh -c "$(curl -fsSL https://raw.githubusercontent.com/LasseHaslev/ultimate-vimrc/master/install.sh)"```

**Restart vim and you are good to go!**

### Configuration
#### Folder structure
The folder and file structure is created to be as simple and clear as posible.

All files is in ~/.vim/vimrcs/ are structured in different files for different purposes.
You can add or modify the content in each file to suit your needs.

For more information please check out the content of each file.

###### Import 
> ~/.vim/runtime/vimrcs/import.vim

The import file loads all the other files in this bundle.
If you add a new .vim file, remember to add it to this file.

###### File mapping 
> ~/.vim/runtime/vimrcs/file_mapping.vim

This file takes care of all the map– shortcuts to the other files.

###### Functions 
> ~/.vim/runtime/vimrcs/functions.vim

This is where all the vim functions are stored.

###### Commands 
> ~/.vim/runtime/vimrcs/commands.vim

This file handles all the commands.

###### Mappings 
> ~/.vim/runtime/vimrcs/mapping.vim

This is where all the key mappings and plugin key- modifications are stored.

###### Options 
> ~/.vim/runtime/vimrcs/options.vim

Here you can store all vim options, like color, sizes and other modifications.

###### Plugins 
> ~/.vim/runtime/vimrcs/plugins.vim

This is where all the plugins are stored.

We are using [vim-plug](https://github.com/junegunn/vim-plug) to handle the installation of our plugins.
If you want to install more plugins just add them to this file and run:
>:PlugInstall

#### !Important
Remember to source files or restart vim after you have done changes to any of these files.
