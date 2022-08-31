" => Basic-Options-set -----{{{1
" => ui ----- {{{2
set nocompatible
set background=dark
set title
set number
set showcmd
set cursorline
set cursorlineopt=number "screenline,line,number
"set laststatus=2
"set statusline=%<%f%=\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)%O'%02b'
"hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red
" => edit -----{{{2
set encoding=UTF-8
set foldenable
if expand('%:e') == ''
    set foldmethod=marker
else 
    set foldmethod=indent
endif
set noundofile
set nobackup
set noswapfile
" set undodir=~/.undodir
syntax on
filetype plugin on
set smartcase
set showbreak=➥
set autoread
set mouse=i " i,n,a
set autoindent
set breakindent
set copyindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab

" => vim-plug -----{{{1
" Avoid using standard Vim directory names like 'plugin'
" 'on' => On-demand loading
call plug#begin('~/.vim/plugged')
" NERDTree
Plug 'preservim/nerdtree',{ 'on': 'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'
" statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" vim-lsp
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
" Auto-complete
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
" move language
Plug 'rvmelkonian/move.vim'
Plug 'tomlion/vim-solidity'
call plug#end()
" => NERDTree config ------{{{2
map <C-t> :NERDTreeToggle<CR>
" => vim-lsp ------{{{2

" vim-airline
let g:airline_theme='google_dark' " simple

