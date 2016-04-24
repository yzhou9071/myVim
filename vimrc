""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 一般设定 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 设定默认解码 
set fenc=utf-8 
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936 
" 不要使用vi的键盘模式，而是vim自己的 
set nocompatible 
" history文件中需要记录的行数 
set history=2048 
" 在处理未保存或只读文件的时候，弹出确认 
set confirm 
" 与windows共享剪贴板 
set clipboard+=unnamed 
" 侦测文件类型 
filetype on 
" 载入文件类型插件 
filetype plugin on 
" 为特定文件类型载入相关缩进文件 
filetype indent on 
" 保存全局变量 
set viminfo+=! 
" 带有如下符号的单词不要被换行分割 
set iskeyword+=_,$,@,%,#,- 
" 语法高亮 
syntax on 
" 高亮字符，让其不受100列限制 
:highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white 
:match OverLength '\%101v.*' 
" 状态行颜色 
highlight StatusLine guifg=SlateBlue guibg=Yellow 
highlight StatusLineNC guifg=Gray guibg=White 
" 显示标尺
"set ruler
" 突出显示当前行
set cursorline
" 显示行号
set nu

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 文件设置 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 不要备份文件（根据自己需要取舍） 
set nobackup 
" 不要生成swap文件，当buffer被丢弃的时候隐藏它 
set noswapfile 
set bufhidden=hide 
" 字符间插入的像素行数目 
set linespace=0 
" 增强模式中的命令行自动完成操作 
set wildmenu 
" 在状态行上显示光标所在位置的行号和列号 
set ruler 
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%) 
" 命令行（在状态行下）的高度，默认为1，这里是2 
set cmdheight=2 
" 使回格键（backspace）正常处理indent, eol, start等 
set backspace=2 
" 允许backspace和光标键跨越行边界 
"set whichwrap+=<,>,h,l 
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位） 
set mouse=a 
set selection=exclusive 
set selectmode=mouse,key 
" 启动的时候不显示那个援助索马里儿童的提示 
set shortmess=atI 
" 通过使用: commands命令，告诉我们文件的哪一行被改变过 
set report=0 
" 不让vim发出讨厌的滴滴声 
set noerrorbells 
" 在被分割的窗口间显示空白，便于阅读 
set fillchars=vert:\ ,stl:\ ,stlnc:\ 
" 设置自动保存
set autowrite
" vim打开时，没有文件自动打开NERDTree
autocmd vimenter * if !argc() | NERDTree | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 搜索和匹配 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 高亮显示匹配的括号 
set showmatch 
" 匹配括号高亮的时间（单位是十分之一秒） 
set matchtime=5 
" 在搜索的时候忽略大小写 
set ignorecase 
" 高亮搜索
set hlsearch
" 不要高亮被搜索的句子（phrases） 
"set nohlsearch 
" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索） 
set incsearch 
" 输入:set list命令是应该显示些啥？ 
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ 
" 光标移动到buffer的顶部和底部时保持3行距离 
set scrolloff=3 
" 不要闪烁 
set novisualbell 
" 我的状态行显示的内容（包括文件类型和解码） 
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")} 
" 总是显示状态行 
set laststatus=2 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 采用windows复制粘贴命令 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 文本格式和排版 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 自动格式化 
set formatoptions=tcrqn 
" 继承前一行的缩进方式，特别适用于多行注释 
set autoindent 
" 为C程序提供自动缩进 
set smartindent 
" 使用C样式的缩进 
set cindent 
" 制表符为4 
set tabstop=4 
" 统一缩进为4 
set softtabstop=4 
set shiftwidth=4 
" 不要用空格代替制表符 
set noexpandtab 
" 不要换行 
"set nowrap 
" 在行和段开始处使用制表符 
set smarttab 
" 自动缩进
set ai
" 智能缩进
set si

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" CTags的设定 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 按照名称排序 
let Tlist_Sort_Type = "name" 
" 在右侧显示窗口 
let Tlist_Use_Right_Window = 1 
" 压缩方式 
let Tlist_Compart_Format = 1 
" 如果只有一个buffer，kill窗口也kill掉buffer 
let Tlist_Exist_OnlyWindow = 1 
" 不要关闭其他文件的tags 
let Tlist_File_Fold_Auto_Close = 0 
" 不要显示折叠树 
let Tlist_Enable_Fold_Column = 0 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" Autocommands 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 能够漂亮地显示.NFO文件 
set encoding=utf-8 
function! SetFileEncodings(encodings) 
	let b:myfileencodingsbak=&fileencodings 
	let &fileencodings=a:encodings 
endfunction 
function! RestoreFileEncodings()
	let &fileencodings=b:myfileencodingsbak 
	unlet b:myfileencodingsbak 
endfunction 
au BufReadPre *.nfo call SetFileEncodings('cp437')|set ambiwidth=single au BufReadPost *.nfo call RestoreFileEncodings() 
" 高亮显示普通txt文件（需要txt.vim脚本） 
au BufRead,BufNewFile * setfiletype txt 
" 用空格键来开关折叠 
set foldenable 
set foldmethod=manual 
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc':'zo')<CR> 
" minibufexpl插件的一般设置 
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1

"markdown配置
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=mkd
au BufRead,BufNewFile *.{go}   set filetype=go
au BufRead,BufNewFile *.{js}   set filetype=javascript
