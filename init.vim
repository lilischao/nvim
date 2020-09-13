" 
 " __  __       _   _                 _           
" |  \/  |_   _| \ | | ___  _____   _(_)_ __ ___  
" | |\/| | | | |  \| |/ _ \/ _ \ \ / / | '_ ` _ \ 
" | |  | | |_| | |\  |  __/ (_) \ V /| | | | | | |
" |_|  |_|\__, |_| \_|\___|\___/ \_/ |_|_| |_| |_|
        " |___/                                   
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
set wrap
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
noremap L 7l
noremap H 7h
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
" 快速查找自定义预留符号
map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l
set autochdir
" 复制粘贴操作
" nvim 需要安装xsel软件才能使用
" set clipboard+=unnamedplus
" 可视模式下复制到系统剪贴板
vnoremap Y "+y
" 普通模式下 复制到行尾
nnoremap Y y$
" ==== 
" ==== 插件配置
" ==== 
call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = 'google-chrome-stable'

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'
source ~/.config/nvim/md-snippits.vim
