"你在此设置运行时路径 
set rtp+=~/.vim/bundle/Vundle.vim  

"Vundle插件设置  
call vundle#begin()  
  
Plugin 'gmarik/Vundle.vim'    
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'Henvy-Mango/taglist_new'

call vundle#end()


syntax enable					"开启语法高亮
set ruler						"显示标尺  
set showcmd						"输入的命令显示出来，看的清楚些  
set cmdheight=1					"命令行（在状态行下）的高度，设置为1  
set whichwrap+=<,>,h,l			"允许backspace和光标键跨越行边界(不建议)  
set scrolloff=3					"光标移动到buffer的顶部和底部时保持3行距离 "
set gcr=a:blinkon0				"光标不闪烁
set backspace=indent,eol,start	"智能退格键
set autowrite					"设置当文件被改动时自动载入
set confirm						"在处理未保存或只读文件的时候，弹出确认
set autoindent					"自动缩进
set tabstop=4					"Tab键的宽度
set noexpandtab					"不要用空格代替制表符
set smarttab					"在行和段开始处使用制表符
set number						"显示行号
set history=1000				"历史记录数
set ignorecase					"搜索忽略大小写
set gdefault					"行内替换
set wildmenu					"增强模式中的命令行自动完成操作
set showmatch					"开启括号匹配
set matchtime=1					"匹配括号高亮的时间（单位是十分之一秒）
set ambiwidth=double			"设置为双字宽显示，否则无法完整显示如:☆
set autoread					"文件修改之后自动读取
set shortmess=atI				"启动后不显示捐献提示
set cursorline					"高亮显现当前行
set clipboard+=unnamed			"共享剪切板

"设置主题和字体
set background=dark
colorscheme solarized
set guifont=Consolas_for_Powerline_FixedD:h12

"解决中文乱码
set helplang=cn  
set encoding=utf-8
language messages zh_CN.utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"统一缩进为4
set softtabstop=4
set shiftwidth=4

"搜索逐字符高亮
set hlsearch
set incsearch

"文件类型识别开启
filetype plugin on
filetype indent on

"设置取消备份，禁止临时文件生成  
set nobackup  
set noswapfile  

"选中状态下 Ctrl+C复制,一般模式下Ctrl+V粘贴
vnoremap <C-c> "+y   
nmap <silent> <C-v> "+p

"插入模式下上下左右移动光标  
inoremap <c-h> <left>  
inoremap <c-l> <right>  
inoremap <c-j> <c-o>gj  
inoremap <c-k> <c-o>gk 

"设置切换Buffer快捷键"
nnoremap <C-Up> :bn<CR>
nnoremap <C-Tab> :bn<CR>
nnoremap <C-Down> :bp<CR>

"不显示工具/菜单栏
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b

"窗口大小和启动位置
set lines=31 columns=90
winpos 470 235


"vim-airline插件设置
set t_Co=256
set laststatus=2
let g:airline_powerline_fonts = 1
"开启Buffer栏
let g:airline#extensions#tabline#enabled = 1
"状态栏主题设置
let g:airline_theme='bubblegum'
"关闭状态显示空白符号计数
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
"状态栏符号
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'


"NERDTree设置
"快捷键F2呼出文件树
nnoremap <silent> <F2> :NERDTree<CR>	
"设置NERDTree窗口大小
let NERDTreeWinSize=25					


"Taglist设置
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Show_Menu = 1
"快捷键F3呼出Taglist
nmap <silent> <F3> :TlistToggle<CR>
"设置Taglist窗口大小和方向
let Tlist_WinWidth= 25
let Tlist_Use_Right_Window = 1
