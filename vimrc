syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set backspace=2
"set nu
set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
set nocompatible                " be iMproved
filetype on                    " required!

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nnoremap <F3> :set hlsearch!<CR>


call vundle#begin()
    Bundle 'gmarik/vundle'
    Bundle 'kien/ctrlp.vim'
    Bundle 'jiangmiao/auto-pairs'
    Bundle 'Valloric/YouCompleteMe'
    Bundle 'scrooloose/nerdcommenter'
    Bundle 'ShowPairs'
    Bundle 'scrooloose/nerdtree'
    Bundle 'octol/vim-cpp-enhanced-highlight'
    Bundle 'Yggdroot/LeaderF'
    Bundle 'fatih/vim-go'
call vundle#end()

noremap <F8> :TlistToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
"开启molokai颜色
colorscheme molokai

let g:molokai_original = 1
let g:rehash256 = 1
set t_Co=256
set background=dark

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
"set cindent                             "（cindent是特别针对 C语言语法自动缩进）
set smartindent                    "依据上面的对齐格式，智能的选择对齐方式，对于类似C语言编写上有用   
set ignorecase					"忽略搜索大小写

"设置注释
let g:DoxygenToolkit_briefTag_funcName = "yes"
let g:DoxygenToolkit_commentType = "PHP"
let g:DoxygenToolkit_paramTag_pre = "@param "
let g:DoxygenToolkit_returnTag = "@return "
let g:DoxygenToolkit_dateTag = "@date "
let g:DoxygenToolkit_authorTag = "@author "
let g:DoxygenToolkit_authorName = "shiliang.lan"
let g:doxygen_enhanced_color = 1
"let g:load_doxygen_syntax = 1
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'


"关闭ycm错误语法提示
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
"c++11
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'

"let Tlist_Auto_Open = 1 
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1 
let Tlist_Exit_OnlyWindow = 1 
let Tlist_Use_Right_Window = 1

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
set termencoding=utf-8
set tags+=~/tags
set autochdir
set ff=unix
" 当光标一段时间保持不动了，就禁用高亮
autocmd cursorhold * set nohlsearch
set hlsearch
:set ff=unix
let Tlist_Inc_Winwidth=0
let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Exit_OnlyWindow=1
map <F4> :NERDTreeToggle<CR>
let NERDTreeWinPos="left"

let g:go_version_warning = 0
let g:go_fmt_command = "goimports"
