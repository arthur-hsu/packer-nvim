if(has("win32") || has("win64") || has("win95") || has("win16"))
    map rc :w<CR> :e $HOME\nvim\init.vim<CR>
    map test :w<CR> :e $HOME\.test.py<CR>
    map note :w<CR> :e $HOME\.note.txt<CR>
    map lua :w<CR> :e $HOME\nvim\lua\init.lua<CR>
    map <F6> :<esc>:source $HOME\nvim\init.vim<CR><CR>
else
    map rc :w<CR> :e $HOME/nvim/init.vim<CR>
    map test :w<CR> :e $HOME/.test.py<CR>
    map note :w<CR> :e $HOME/.note.txt<CR>
    map lua :w<CR> :e $HOME/nvim/lua/init.lua<CR>
    map <F6> :<esc>:source $HOME/nvim/lua/init.lua<CR><CR>
endif
autocmd BufWritePost $HOME/nvim/init.vim source $HOME/nvim/init.vim

" 在重新開啟檔案後保留遊標位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

if exists(':GuiFont')
    GuiFont JetBrainsMonoNL_Nerd_Font_Mono:h14
endif
set nocompatible              " be iMproved, required
set buftype=""
set noswapfile " 關閉生成暫存檔
set modifiable
filetype plugin indent on
set termguicolors
set t_Co=256
let g:python_highlight_all = 1
syntax on
set background=dark "設置背景色

set nu rnu  " 啟用相對行術
set undofile " Maintain undo history between sessions
set undodir=$HOME/.undodir/nvim

" 让Vim可视模式下选中的内容复制到系统剪贴板
set clipboard=unnamed
"set clipboard+=unnamedplus

set wrap "設置換行
set fileformat=unix "設置以unix的格式保存文件
set textwidth=200       " break lines when line length increases
set expandtab " 将制表符扩展为空格
set tabstop=4 " 设置编辑时制表符占用空格数
set shiftwidth=4 " 设置格式化时制表符占用空格数
set softtabstop=4 " 让 vim 把连续数量的空格视为一个制表符
set autoindent
"set smartindent
let &t_ut='' " 將縮排定義為空格
set ruler  " show line and column number
set showcmd " show (partial) command in status line
set showmatch "顯示匹配的括號
set scrolloff=12 "距離頂部和底部5行

" make backspaces more powerfull
set backspace=indent,eol,start
set fenc=utf-8 "文件編碼
set mouse=a "啟用滑鼠
set selection=exclusive
set selectmode=mouse,key
set matchtime=0
set ignorecase "忽略大小寫
set incsearch
set hlsearch "高亮搜索項
set expandtab
set whichwrap+=<,>,h,l
set autoread
set cursorline "突出顯示當前行

colo zephyr
lua require('init')
source $HOME/nvim/config/cmd.vim " 自訂CMD 目錄
source $HOME/nvim/config/multi_line.vim
source $HOME/nvim/config/gitgutter.vim
source $HOME/nvim/config/baleia.vim
