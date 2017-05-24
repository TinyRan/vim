set ts=4
set nu
set rtp+=~/.vim/bundle/vundle/ 
call vundle#rc()
Bundle 'gmarik/vundle' 
Plugin 'git://github.com/scrooloose/nerdtree.git'
map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
