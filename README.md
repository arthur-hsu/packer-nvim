# .vim

cmd execute

pip3 install neovim

npm install neovim

管理員執行
pip install jedi-language-server

On windows add cmd in $HOME/AppData/Local/nvim

cd

mkdir .\AppData\Local\nvim

nvim .\AppData\Local\nvim\init.vim

set runtimepath+=$HOME/nvim         " let vim also search vim files located in $HOME/.vim

source $HOME/nvim/init.vim          " source all settings from $HOME/.vim/vimrc

On linux
  
cd

mkdir ~/.config/nvim

nvim ~/.config/nvim/init.vim

set runtimepath+=$HOME/nvim         " let vim also search vim files located in $HOME/.vim

source $HOME/nvim/init.vim          " source all settings from $HOME/.vim/vimrc
