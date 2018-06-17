"设置菜单语言
set langmenu=zh_cn

" 保留历史记录
set history=400

" 获取当前目录
func GetPWD()
    return substitute(getcwd(), "", "", "g")
endf

" 命令行于状态行
set ch=1
set stl=\ [File]\ %F%m%r%h%y[%{&fileformat},%{&fileencoding}]\ %w\ \ [PWD]\ %r%{GetPWD()}%h\ %=\ [Line]\ %l,%c\ %=\ %P
set ls=2 " 始终显示状态行

" 制表符
set tabstop=4
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4

" 状态栏显示目前所执行的指令
set showcmd

" 行控制
set linebreak
set nocompatible
set textwidth=80
set wrap

" 标签页
set tabpagemax=20
set showtabline=2

" 缩进
set autoindent
set cindent
set smartindent

" 自动重新读入
set autoread

" 代码折叠
set foldmethod=manual
"set foldmethod=indent

" 自动切换到文件当前目录
set autochdir

"在查找时忽略大小写
set ignorecase
set incsearch
set hlsearch

"显示匹配的括号
set showmatch

"在所有模式下都允许使用鼠标，还可以是n,v,i,c等
set mouse=a

"colorful
colorscheme peachpuff
syntax on


