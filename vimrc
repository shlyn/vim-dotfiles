" => Basic-Options-set  -----{{{1
" => ui -----{{{2
set nocompatible
set background=dark
set title
set number
set showcmd
set cursorline
set cursorlineopt=screenline
" ----------> statusline
" set laststatus=2
" set statusline=%<%f%=\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)%O'%02b'
" hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red
" => fold -----{{{2
set foldenable
if expand('%:e') == ''
    set foldmethod=marker
else 
    set foldmethod=indent
endif
" => backup -----{{{2
set noundofile
set nobackup
set noswapfile
" set undodir=~/.undodir
" => formatter -----{{{2
set autoindent
set breakindent
set copyindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
" => edit -----{{{2
syntax on
filetype plugin on
set smartcase
set showbreak=➥
set autoread
set mouse=i 

" => vim-plug -----{{{1
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

" => Plugins-configruation -----{{{1
" => NERDTree config ------{{{22
map <C-t> :NERDTreeToggle<CR>
