# .vim
![Now](https://github.com/aaa890177/nvim/assets/127286236/c38af9c3-32e5-42eb-8e6a-6c193cd2e959)
字體要換成帶有[NERD]的 
比如 JetBrainsMono Nerd font

cmd execute

    pip3 install neovim
    npm install neovim


On windows add cmd in $HOME/AppData/Local/nvim

    cd
    mkdir .\AppData\Local\nvim
    nvim .\AppData\Local\nvim\init.vim
init.vim add

    set runtimepath+=$HOME/nvim         " let vim also search vim files located in $HOME/.vim
    source $HOME/nvim/init.vim          " source all settings from $HOME/.vim/vimrc

On linux
  
    cd
    mkdir ~/.config/nvim
    nvim ~/.config/nvim/init.vim
init.vim add

    set runtimepath+=$HOME/nvim         " let vim also search vim files located in $HOME/.vim
    source $HOME/nvim/init.vim          " source all settings from $HOME/.vim/vimrc
