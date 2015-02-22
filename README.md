# Ultimate .vimrc
This is the ultimate vim setup

Based on [**JeffreyWay/.vimrc**](https://gist.github.com/JeffreyWay/6753834) and some inspiration from [**Amix/vimrc**](https://github.com/amix/vimrc)

##Install
Make sure you have the lastest [MacVim](https://code.google.com/p/macvim/) installed.

Clone the repository by running:
> git clone git://github.com/LasseHaslev/ultimate-vimrc.git ~/.vim

After cloning the repository, update the ~/.vimrc file by calling:
> sh ~/.vim/runtime/install.sh

This vimrc requires [Vundle](https://github.com/gmarik/Vundle.vim). Follow the installation guide, open vim and run:
>:PluginInstall

**Restart vim and you are good to go!**

###Configuration
All files is in ~/.vim/vimrcs/ are structured in different files for different purposes.
You can add or modify the content in each file to suit your needs.
If you add a new .vim file, dont forget to add it the source to the ~/.vim/vimrcs/import.vim file.
