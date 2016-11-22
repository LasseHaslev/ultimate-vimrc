# Clone the git to the .vim directory of home
git clone -b personal https://github.com/LasseHaslev/ultimate-vimrc.git ~/.vim/runtime

# Trenger jeg denne?
cd ~/.vim/runtime

# Import the vimrc files
echo '" Import vim files
source ~/.vim/runtime/vimrcs/import.vim
' > ~/.vimrc

# Create vimundo file for making "infinite" undoes for all files
mkdir ~/.vim/vimundo

# Install Vundle package manager
echo "Setting up Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install plugins in vim with Vundle
echo "Installing vundle plugins"
vim +PluginInstall +qa!

# Install dependencies
echo "Installing dependencies"
npm -g install instant-markdown-d

# Give feedback that we installed the ultimate vimrc
echo "Installed the Ultimate Vim setup."
