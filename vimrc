set ts=4
set nu
set rtp+=~/.vim/bundle/vundle/ 
call vundle#rc()
Bundle 'gmarik/vundle' 
Bundle 'ctrlp.vim'                  
Bundle 'AutoClose'
Plugin 'git://github.com/scrooloose/nerdtree.git'
map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
