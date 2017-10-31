syntax enable

set number
"set clipboard+=unnamed
set nocompatible

set expandtab
set shiftwidth=4
set softtabstop=4

" Press F4 to toggle highlighting on/off, and show current value.
noremap <F5> :set hlsearch! hlsearch?<CR>
noremap <Leader>nt :NERDTreeToggle<CR>

nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

colorscheme solarized
set background=dark

let g:diff_translations = 0

call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-fugitive'

" Interface
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes'

" Navigation
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'

" Gutter
Plug 'myusuf3/numbers.vim'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'

" Auto-completion
Plug 'zchee/deoplete-clang' 
Plug 'artur-shaik/vim-javacomplete2'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } 

" Editing
Plug 'terryma/vim-multiple-cursors'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'sirver/ultisnips' 

" Color themes
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'

call plug#end()

" "
" UltiSnips
" "

let g:UltiSnipsSnippetDirectories=["UltiSnips", "mysnippets"]
let g:UltiSnipsExpandTrigger='<C-j>'
let g:UltiSnipsJumpForwardTrigger='<C-j>'
let g:UltiSnipsJumpBackwardTrigger='<C-k>'

" "
" CtrlP
" "

let g:ctrlp_show_hidden=1
let g:ctrlp_working_path_mode='wr'
let g:ctrlp_user_command=['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"let g:ycm_always_populate_location_list=1
"let g:ycm_use_ultisnips_completer=1

" "
" Indent Guide
" "

"let g:indent_guides_enable_on_vim_startup=1
"let g:indent_guides_guide_size=4
"let g:indent_guides_auto_colors=1

" "
" Deoplete
" "

let g:deoplete#enable_at_startup=1
let g:deoplete#enable_camel_case=1
let g:deoplete#omni_patterns={}
let g:deoplete#omni_patterns.java='[^. *\t]\.\w*'
let g:deoplete#sources={}
let g:deoplete#sources._=[]
let g:deoplete#file#enable_buffer_path=1

""
" Java Complete
""

let g:JavaComplete_JavaviLogfileDirectory = '~/.local/var/log'
let g:JavaComplete_EnableDefaultMappings=1 
let g:JavaComplete_JavaviDebug = 1
autocmd FileType java setlocal omnifunc=javacomplete#Complete
