# .vim

On windows add cmd in $HOME/AppData/Local/nvim

cd
mkdir .\AppData\Local\nvim
nvim .\AppData\Local\nvim\init.vim
set runtimepath+=$HOME/nvim     " let vim also search vim files located in $HOME/.vim
source $HOME/nvim/vimrc         " source all settings from $HOME/.vim/vimrc
On linux
  
cd
mkdir ~/.config/nvim
nvim ~/.config/nvim/init.vim
set runtimepath+=$HOME/nvim     " let vim also search vim files located in $HOME/.vim
source $HOME/nvim/vimrc         " source all settings from $HOME/.vim/vimrc
