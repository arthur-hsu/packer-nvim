
let g:iswindows = 0
let g:islinux = 0
if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
    map rc :w<CR> :e $HOME\nvim\init.vim<CR>
    map <F6> :<esc>:source $HOME\nvim\init.vim<CR> 
    "python解释器路径"
    let g:ycm_path_to_python_interpreter='C:\Python311\python.exe'
else
    let g:islinux = 1
    map rc :w<CR> :e $MYVIMRC<CR>
    map <F6> :<esc>:source $MYVIMRC<CR>
    "python解释器路径"
    let g:ycm_path_to_python_interpreter='/usr/bin/python3'
endif

autocmd BufWritePost $MYVIMRC source $MYVIMRC
"autocmd VimEnter set guifont=Consolas:h12 

set undofile " Maintain undo history between sessions
set undodir=$HOME/nvim/.undodir


call plug#begin('~/nvim/plugged')
"colo
Plug 'sickill/vim-monokai'
Plug 'dunstontc/vim-vscode-theme' " dark_plus
Plug 'mkarmona/materialbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'romgrk/doom-one.vim'

Plug 'airblade/vim-gitgutter' " git
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'tell-k/vim-autopep8'
Plug 'nathanaelkane/vim-indent-guides' " IndentGuides
Plug 'luochen1990/rainbow' " 彩虹括號號
Plug 'scrooloose/nerdcommenter' " 註解 \cc 取消註解 \cu
Plug 'mg979/vim-visual-multi' " 多重光標
Plug 'dense-analysis/ale' " 偵錯程式需要使用 pip 安裝 pip install pylint
Plug 'https://github.com/fcpg/vim-osc52' " 遠端複製到本地
Plug 'https://github.com/mbbill/undotree'
Plug 'https://github.com/MTDL9/vim-log-highlighting'
Plug 'neoclide/jsonc.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'https://github.com/vim-python/python-syntax'
"not enable
"Plug 'ycm-core/YouCompleteMe'
"Plug 'jaxbot/semantic-highlight.vim' " 語法高亮
"Plug 'sheerun/vim-polyglot'
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()


syntax on                                     
set t_Co=256
set termguicolors
set background=dark "設置背景色
colo doom-one
set buftype=""


set nu rnu  " 啟用相對行術

"source $HOME/nvim/config/YouCompleteMe.vim 
source $HOME/nvim/config/coc.vim 
source $HOME/nvim/config/rainbow.vim 
source $HOME/nvim/config/cmd.vim
source $HOME/nvim/config/multi_line.vim
source $HOME/nvim/config/airline_ale.vim
source $HOME/nvim/config/semshi.vim
"source $HOME/nvim/config/treesitter.vim
"autocmd VimEnter :TSBufToggle highlight



let g:python_highlight_all = 1

" 让Vim可视模式下选中的内容复制到系统剪贴板
set clipboard=unnamed
set clipboard+=unnamedplus
set noswapfile " 關閉生成暫存檔

" configure expanding of tabs for various file types
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab

" 隱藏滾動條
set guioptions-=r
set guioptions-=L
set guioptions-=b
" 隱藏頂部標籤欄
"set showtabline=0

set wrap "設置換行
set fileformat=unix "設置以unix的格式保存文件

set textwidth=200       " break lines when line length increases


" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
let &t_ut='' " 將縮排定義為空格


"%retab!
set smartindent
set autoindent
set ruler  " show line and column number
set showcmd " show (partial) command in status line
set showmatch "顯示匹配的括號
set scrolloff=12 "距離頂部和底部5行
set fenc=utf-8 "文件編碼

" make backspaces more powerfull
set backspace=indent,eol,start

set mouse=a "啟用滑鼠
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set ignorecase "忽略大小寫
set incsearch
set hlsearch "高亮搜索項
set expandtab
set whichwrap+=<,>,h,l
set autoread
set cursorline "突出顯示當前行

" 在重新開啟檔案後保留遊標位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

set nocompatible              " be iMproved, required
filetype off                 " required
filetype plugin indent on    " required

" indent_guides set
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle
" indent_guides
let g:indent_guides_enable_on_vim_startup = 1


" nerdtree
let NERDTreeShowHidden=1
let g:nerdtree_tabs_open_on_console_startup=1

" git
set updatetime=300


" semantic
"let g:semanticEnableFileTypes = ['javascript', 'vim', 'python']
"noremap <Leader>s :SemanticHighlight<cr>



