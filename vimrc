set ts=4
set nu
set rtp+=~/.vim/bundle/Vundle.vim


call vundle#begin()
Plugin 'scrooloose/nerdcommenter'
Plugin 'DoxygenToolkit.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'git://github.com/scrooloose/nerdtree.git'
call vundle#end()

map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
"开启molokai颜色
colorscheme molokai

let g:molokai_original = 1
let g:rehash256 = 1
set t_Co=256
set background=dark

autocmd BufNewFile,BufRead * :syntax match cfunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2 
autocmd BufNewFile,BufRead * :syntax match cfunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1

hi cfunctions ctermfg=81
hi Type ctermfg=118 cterm=none 
hi Structure ctermfg=118 cterm=none
hi Macro ctermfg=161 cterm=bold
hi PreCondit ctermfg=161 cterm=bold
set cursorline 

"开启PHP函数自动补全 Ctrl+x Ctrl+o
filetype plugin on                                             
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"定位查找
set incsearch 
set autoindent                       "vim使用自动对齐，也就是把当前行的对齐格式应用到下一行(自动缩进）
set cindent                             "（cindent是特别针对 C语言语法自动缩进）
set smartindent                    "依据上面的对齐格式，智能的选择对齐方式，对于类似C语言编写上有用   

let g:DoxygenToolkit_briefTag_funcName = "yes"
let g:DoxygenToolkit_commentType = "PHP"
let g:DoxygenToolkit_paramTag_pre = "@param "
let g:DoxygenToolkit_returnTag = "@return "
let g:DoxygenToolkit_dateTag = "@date "
let g:DoxygenToolkit_authorTag = "@author "
let g:DoxygenToolkit_authorName = "shiliang.lan"
let g:doxygen_enhanced_color = 1
"let g:load_doxygen_syntax = 1
nmap <F8> :TagbarToggle<CR>
"let g:tagbar_phpctags_bin='PATH_TO_phpctags'
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

" 插入匹配括号
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
