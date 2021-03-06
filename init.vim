" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" 插件
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/indexer.tar.gz'
Plug 'vim-scripts/DfrankUtil'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/vimprj'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'mattn/emmet-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-fugitive'
call plug#end()
" vim 自身命令行模式智能补全
set wildmenu
" 60秒自动保存
let autosave=30
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 开启相对行号
set relativenumber
" 高亮显示搜索结果
set hlsearch
set incsearch
" 在屏幕右下角显示未完成的指令输入。
set showcmd
"这个选项可以让你设定在上下移动光标时，光标的上方或下方至少会保留显示的行数。
set scrolloff=3
"搜索时忽略大小写
set ignorecase
set smartcase
"自动缩进
set autoindent
" airline设置
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='bubblegum'
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格�为一个制表符
set softtabstop=4
" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable
