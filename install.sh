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
echo "Setting up vim plugin manager"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Brows like a pro with ctags
brew install ctags

# install plugins in vim with Vundle
echo "Installing vim plugins"
vim +PlugInstall +qa!

# Give feedback that we installed the ultimate vimrc
echo "Installed the Ultimate Vim setup."
