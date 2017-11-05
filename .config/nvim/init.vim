syntax enable

set number
set nocompatible

set expandtab
set shiftwidth=4
set softtabstop=4

" Inserting lines above and below current line
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Theme
colorscheme solarized8_light_flat
set termguicolors

let g:diff_translations = 0

call plug#begin('~/.local/share/nvim/plugged')
    Plug 'airblade/vim-gitgutter'
    Plug 'altercation/vim-colors-solarized'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'majutsushi/tagbar'
    Plug 'myusuf3/numbers.vim'
    Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'qpkorr/vim-renamer'
    Plug 'rip-rip/clang_complete'
    Plug 'scrooloose/nerdtree'
    Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } 
    Plug 'shougo/echodoc.vim'
    Plug 'sirver/ultisnips' 
    Plug 'tomtom/tcomment_vim'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'vim-airline/vim-airline' 
    Plug 'vim-airline/vim-airline-themes'
    Plug 'vim-syntastic/syntastic'
    Plug 'xuyuanp/nerdtree-git-plugin'
call plug#end()

" """"""""""""""""""
" NERDTree         "
" """"""""""""""""""
noremap <Leader>nt :NERDTreeToggle<CR>

" """"""""""""""""""
" FZF              "
" """"""""""""""""""
noremap <C-p> :FZF<CR> 

" """"""""""""""""""
" Tagbar           "
" """"""""""""""""""
noremap <Leader>tb :TagbarToggle<CR>

" """"""""""""""""""
" Syntastic    "
" """"""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_sort_aggregated_errors=1
let g:syntastic_aggregate_errors=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_mode_map={}
let g:syntastic_mode_map.active_filetypes = ['cpp', 'h']
let g:syntastic_cpp_checkers=['gcc']
let g:syntastic_cpp_check_header=1
let g:syntastic_c_check_header=1

" """"""""""""""""""
" Echodoc     "
" """"""""""""""""""
set noshowmode
let g:echodoc#enable_at_startup=1
let g:echodoc#type='signature'

" """"""""""""""""""
" Deoplete         "
" """"""""""""""""""
set completeopt-=preview
set completeopt+=noselect
let g:deoplete#enable_at_startup=1
let g:deoplete#enable_camel_case=1
let g:deoplete#refresh_always=1
let g:deoplete#sources={}
let g:deoplete#sources._=[]
let g:deoplete#file#enable_buffer_path=1
let g:deoplete#max_list=20
call deoplete#custom#source('_', 'matchers', ['matcher_full_fuzzy', 'matcher_length'])
call deoplete#custom#source('_', 'converters', ['converter_remove_paren'])

" """"""""""""""""""
" Clang Complete   "
" """"""""""""""""""
let g:clang_complete_auto = 0
let g:clang_auto_select = 0
let g:clang_omnicppcomplete_compliance = 0
let g:clang_make_default_keymappings = 0
let g:clang_use_library = 1
let g:clang_library_path='/usr/lib/libclang.so'
let g:clang_auto_user_options='compile_commands.json'
let g:clang_complete_macros=1
let g:clang_complete_patterns=1

" """"""""""""""""""
" UltiSnips        "
" """"""""""""""""""
let g:UltiSnipsExpandTrigger='<C-j>'
let g:UltiSnipsJumpForwardTrigger='<C-j>'
let g:UltiSnipsJumpBackwardTrigger='<C-k>'
let g:UltiSnipsSnippetDirectories=[" UltiSnips", "mysnippets"]
