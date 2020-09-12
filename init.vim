let mapleader = " "
" === nvim 的一些基本配置
syntax on
" 显示行号
set number
set scrolloff=5
" 显示关联行号
set relativenumber
" 显示当前所在行
set cursorline
" 文本内容折叠
set nowrap
" 显示命令
set showcmd
" nvim命令提示
set wildmenu
" 搜索高亮设置
set hlsearch
noremap <LEADER><CR> :nohlsearch<CR>
" 边输入边搜索
set incsearch
" 查询结果自动居中
noremap n nzz
noremap N Nzz
" 快速浏览
noremap J 5jzz
noremap K 5kzz
" 退出保存
map s <nop>
map S :w<CR>
map Q :q<CR>
" 分屏操作
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>
" 分屏之间移动
map <LEADER>l <C-w>l
map <LEADER>k <C-w>k
map <LEADER>j <C-w>j
map <LEADER>h <C-w>h
" 调整分屏大小
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
" 上下左右分屏
map sv <C-w>t<C-w>H
map sg <C-w>t<C-w>K
" 标签页
map tk :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>
" 让vim 识别不同的文件格式
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
" ==== 
" ==== 插件配置
" ==== 
call plug#begin('~/.config/nvim/plugged')

" vim 状态栏插件
Plug 'vim-airline/vim-airline'

call plug#end()
