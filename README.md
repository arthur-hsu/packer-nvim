# Nvim
![Now](https://github.com/aaa890177/nvim/assets/127286236/c38af9c3-32e5-42eb-8e6a-6c193cd2e959)
## Terminal字體設定
![image](https://github.com/aaa890177/nvim/assets/127286236/d813b1f6-4bf4-4355-991d-d02bd6061970)

下載連結: https://www.nerdfonts.com/font-downloads

下載完後安裝字體
  
Terminal字體換成帶有`NERD`的
  
比如 `JetBrainsMono Nerd font`

## Setup
- Cmd execute

        pip3 install neovim
        npm install neovim


- On windows add cmd in $HOME/AppData/Local/nvim

        cd
        mkdir .undodir
        mkdir .undodir\nvim
        mkdir .\AppData\Local\nvim
        git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"


- On linux
  
        cd
        mkdir .undodir
        mkdir .undodir/nvim
        mkdir ~/.config/nvim
        git clone --depth 1 https://github.com/wbthomason/packer.nvim\
        ~/.local/share/nvim/site/pack/packer/start/packer.nvim

- `init.vim` add
    - Windows`nvim .\AppData\Local\nvim\init.vim`
    - Linux`nvim ~/.config/nvim/init.vim`
    
          set runtimepath+=$HOME/nvim         " let vim also search vim files located in $HOME/.vim
          source $HOME/nvim/init.vim          " source all settings from $HOME/.vim/vimrc
- 開啟 Nvim 輸入 `:PackerSync`


