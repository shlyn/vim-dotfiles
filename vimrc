" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

set nocompatible
" ----------> ui
set background=dark
set title
set number
set showcmd
" ----------> fold
set foldenable
set foldmethod=syntax
" ----------> backup
set noundofile
set nobackup
set noswapfile
" set undodir=~/.undodir
" ----------> indent and tab
set autoindent
set breakindent
set copyindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
" ----------> edit
syntax on
filetype plugin on
set smartcase
set showbreak=➥
set autoread
set mouse=i 
set cursorline
set cursorlineopt=screenline
" ----------> statusline
" set laststatus=2
" set statusline=%<%f%=\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)%O'%02b'
" hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red

" ---------> vim-plug <-----------
" Avoid using standard Vim directory names like 'plugin'
" 'on' => On-demand loading
call plug#begin('~/.vim/plugged')
" NERDTree
Plug 'preservim/nerdtree',{ 'on': 'NERDTreeToggle' }
" vim-lsp
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
" move language
Plug 'rvmelkonian/move.vim'
call plug#end()

" ------> NERDTree config
map <C-t> :NERDTreeToggle<CR>
