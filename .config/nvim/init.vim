syntax on
"colorscheme molokai
"hi Normal ctermbg=none

set clipboard+=unnamed
set number

let g:ctrlp_show_hidden = 1
let g:ctrlp_working_path_mode = 0
"let g:indent_guides_enable_on_vim_startup = 1

call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'nathanaelkane/vim-indent-guides'
Plug 'tomasr/molokai'

call plug#end()
