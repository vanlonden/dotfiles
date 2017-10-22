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

colorscheme solarized
set background=dark

let g:UltiSnipsSnippetDirectories=["UltiSnips", "mysnippets"]
let g:UltiSnipsExpandTrigger='<C-j>'
let g:UltiSnipsJumpForwardTrigger='<C-j>'
let g:UltiSnipsJumpBackwardTrigger='<C-k>'

let g:ctrlp_show_hidden=1
let g:ctrlp_working_path_mode='wr'
let g:ctrlp_user_command=['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:ycm_always_populate_location_list=1
let g:ycm_use_ultisnips_completer=1

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors=1

let g:deoplete#enable_at_startup=1
let g:deoplete#enable_camel_case=1
let g:deoplete#enable_refresh_always=1
let g:deoplete#sources#clang#libclang_path='/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header='/usr/include/clang'
let g:deoplete#sources#clang#sort_algo='priority'
let g:deoplete#omni#functions={} 
let g:deoplete#omni#functions.java='javacomplete@Complete'

let g:JavaComplete_GradleExecutable='/usr/bin/gradle'
let g:JavaComplete_EnableDefaultMappings=1 
let g:JavaComplete_UsePython3=1
"let g:JavaComplete_ShowExternalCommandsOutput=1
let g:JavaComplete_LibsPath=''
let g:JavaComplete_JavaviDebug=1
let g:JavaComplete_JavaviLogFileDirectory='/home/vanlonden/.local/var/log/javavi'
call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-fugitive'

" Interface
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'

" Navigation
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'

" Gutter
Plug 'myusuf3/numbers.vim'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'

" Editing
Plug 'terryma/vim-multiple-cursors'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } | Plug 'zchee/deoplete-clang' | Plug 'artur-shaik/vim-javacomplete2'
Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets/'

" Color themes
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'

call plug#end()
