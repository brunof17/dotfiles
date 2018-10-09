set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'itchyny/lightline.vim' "teste
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'powerline/fonts'
Plugin 'majutsushi/tagbar'
Plugin 'sentientmachine/erics_vim_syntax_and_color_highlighting'
Plugin 'justinmk/vim-syntax-extra'
Plugin 'slim-template/vim-slim'


"set g:tagbar_ctags_bin

call vundle#end()
filetype plugin indent on

"execute pathogen#infect()

set number
set relativenumber
set background=dark
set statusline=2
let g:gruvbox_italic=3
let g:gruvbox_contrast_dark='soft'




let g:haskell_conceal=0

"
"let g:ycm_error_symbol = '✘'
"let g:ycm_warning_symbol = '!!'
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_seed_identifiers_with_syntax=1
"let g:ycm_enable_diagnostic_highlighting = 0
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_autoclose_preview_window_after_insertion = 1


let g:airline#extensions#tabline#enable = 1
let g:airline#extensions#whitespace#enabled =0
let g:airline_powerline_fonts = 1
set noshowmode
set laststatus=2

colorscheme gruvbox
syntax enable
set cursorline
highlight Comment cterm=italic

set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set smarttab
set ruler
set wrap
set wildmenu
set showmatch
set showmode

set incsearch
set hlsearch

nnoremap <leader><space> :nohlsearch<CR>


"ignoremap ( ()<Esc>i
map ^[[5^ :tabp<CR>
map ^[[6^ :tabn<CR>
map ^[Od :tabp<CR>
map ^[Oc :tabn<CR>
nmap <F5> :TagbarToggle<CR>

" Auto indent
map <F7> mzgg=G`z

"Stop highlight after search by hitting return
nnoremap <CR> :noh<CR><CR>

nmap <silent><F3> :NERDTreeToggle<CR>
