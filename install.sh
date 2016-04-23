cd ~/.vim/runtime

echo '" Import vim files
source ~/.vim/runtime/vimrcs/import.vim
' > ~/.vimrc

mkdir ~/.vim/vimundo

echo "Setting up Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installed the Ultimate Vim."
