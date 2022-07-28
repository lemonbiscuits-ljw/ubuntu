call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'       
Plug 'vim-airline/vim-airline-themes' "airline 的主题
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()

colorscheme gruvbox

let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进

" 设置状态栏
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#formatter = 'default'
" let g:airline_theme = 'desertink'  " 主题
" let g:airline#extensions#keymap#enabled = 1
" let g:airline#extensions#tabline#buffer_idx_mode = 1
" let g:airline#extensions#tabline#buffer_idx_format = {
"        \ '0': '0 ',
"        \ '1': '1 ',
"        \ '2': '2 ',
"        \ '3': '3 ',
"        \ '4': '4 ',
"        \ '5': '5 ',
"        \ '6': '6 ',
"        \ '7': '7 ',
"        \ '8': '8 ',
"        \ '9': '9 '
"        \}
" " 设置切换tab的快捷键 <\> + <i> 切换到第i个 tab
" nmap <leader>1 <Plug>AirlineSelectTab1
" nmap <leader>2 <Plug>AirlineSelectTab2
" nmap <leader>3 <Plug>AirlineSelectTab3
" nmap <leader>4 <Plug>AirlineSelectTab4
" nmap <leader>5 <Plug>AirlineSelectTab5
" nmap <leader>6 <Plug>AirlineSelectTab6
" nmap <leader>7 <Plug>AirlineSelectTab7
" nmap <leader>8 <Plug>AirlineSelectTab8
" nmap <leader>9 <Plug>AirlineSelectTab9
" " 设置切换tab的快捷键 <\> + <-> 切换到前一个 tab
" nmap <leader>- <Plug>AirlineSelectPrevTab
" " 设置切换tab的快捷键 <\> + <+> 切换到后一个 tab
" nmap <leader>+ <Plug>AirlineSelectNextTab
" " 设置切换tab的快捷键 <\> + <q> 退出当前的 tab
" nmap <leader>q :bp<cr>:bd #<cr>
" " 修改了一些个人不喜欢的字符
" if !exists('g:airline_symbols')
"     let g:airline_symbols = {}
" endif
" let g:airline_symbols.linenr = "CL" " current line
" let g:airline_symbols.whitespace = '|'
" let g:airline_symbols.maxlinenr = 'Ml' "maxline
" let g:airline_symbols.branch = 'BR'
" let g:airline_symbols.readonly = "RO"
" let g:airline_symbols.dirty = "DT"
" let g:airline_symbols.crypt = "CR" 


" autocmd vimenter * NERDTree  "自动开启Nerdtree
let g:NERDTreeWinSize = 25 "设定 NERDTree 视窗大小
let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks
"打开vim时如果没有文件自动打开NERDTree
" autocmd vimenter * if !argc()|NERDTree|endif
"当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 设置树的显示图标
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let NERDTreeIgnore = ['\.pyc$']  " 过滤所有.pyc文件不显示
let g:NERDTreeShowLineNumbers=0 " 是否显示行号
let g:NERDTreeHidden=0     "不显示隐藏文件
""Making it prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
nnoremap <F3> :NERDTreeToggle<CR> " 开启/关闭nerdtree快捷键


let g:tagbar_width=30
nnoremap <silent> <F4> :TagbarToggle<CR> " 将tagbar的开关按键设置为 F4


filetype plugin on
set ambiwidth=double
set t_ut=
set showmatch
set matchtime=1
set report=0
set ignorecase
set bg=dark
set number
set guifont=FiraCode
set nobackup
set nowritebackup
set noeb
set relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoread
set backspace=2
syntax on
set ruler
set laststatus=2
set autoindent
set t_Co=256
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set history=1000
set clipboard+=unnamed
set cmdheight=1
set helplang=cn
set encoding=UTF-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
set updatetime=300
set shortmess+=c
set signcolumn=yes
set foldmethod=indent
set foldlevelstart=99
