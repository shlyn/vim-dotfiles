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

set modifiable

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
" Auto-pair
Plug 'jiangmiao/auto-pairs'
" move language
Plug 'rvmelkonian/move.vim'
Plug 'tomlion/vim-solidity'
" floaterm
Plug 'voldikss/vim-floaterm'
call plug#end()
" => NERDTree config ------{{{2
let NERDTreeShowHidden=1
map <C-t> :NERDTreeToggle<CR>
" => vim-lsp ------{{{2
" LspInstallServer, LspUninstallServer
if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'allowlist': ['python'],
        \ })
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
    
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
" vim-airline
let g:airline_theme='google_dark' " simple
" vim-floaterm
" Set floaterm window's background to black
hi Floaterm guibg=black
" Set floating window border line color to cyan, and background to orange
hi FloatermBorder guibg=orange guifg=cyan
nnoremap   <silent>   <F7>    :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>

