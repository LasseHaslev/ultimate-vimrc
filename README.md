# Ultimate .vimrc
This is the ultimate basic vim setup, based on [**JeffreyWay/.vimrc**](https://gist.github.com/JeffreyWay/6753834) and some inspiration from [**Amix/vimrc**](https://github.com/amix/vimrc).

This is meant as a starting point, and contains the essentiels building blocks for a powerfull vim editor. If you are interested in more information check out the configuration section below.

##Install
Make sure you have the lastest [MacVim](https://code.google.com/p/macvim/) installed.

Clone this repository by running:
> git clone git://github.com/LasseHaslev/ultimate-vimrc.git ~/.vim/runtime

After cloning the repository, update the ~/.vimrc file by calling:
> sh ~/.vim/runtime/install.sh

This vimrc requires [Vundle](https://github.com/gmarik/Vundle.vim). Follow the installation guide, open vim and run:
>:PluginInstall

**Restart vim and you are good to go!**

###Configuration
####Folder structure
The folder and file structure is created to be as simple and clear as posible.

All files is in ~/.vim/vimrcs/ are structured in different files for different purposes.
You can add or modify the content in each file to suit your needs.
If you add a new .vim file, remember to add it the source to the ~/.vim/vimrcs/import.vim file.

####Install plugins
We are using [Vundle](https://github.com/gmarik/Vundle.vim) to handle the installation of our plugins.
If you want to install more plugins just add them to the ~/.vim/runtime/vimrcs/plugins.vim file and run:
>:Pluginstall

####!Important
Remember to refresh vim after you have done changes.

####Example
If you are interested in how you can use this setup to customize your own, you can see my [personal branch](https://github.com/LasseHaslev/ultimate-vimrc/tree/personal).
