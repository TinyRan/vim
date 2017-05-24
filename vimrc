set ts=4
set nu
set rtp+=~/.vim/bundle/vundle/ 
call vundle#rc()
Bundle 'gmarik/vundle' 
Plugin 'git://github.com/scrooloose/nerdtree.git'
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
