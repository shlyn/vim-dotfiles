" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2019 Jan 26
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings, bail
" out.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
end

set nocompatible " 不兼容vi
set number " 显示行号
set background=dark " 色彩高亮模式

set noundofile " 备份文件
set nobackup
set noswapfile
" set undodir=~/.undodir

set smarttab " 智能缩进
set autoindent
set copyindent
set expandtab " 将tab转成空格
set tabstop=4 " 一个tab显示为4个空格
set shiftwidth=4 " 一个缩进的长度
set softtabstop=4 " 一个退格键的长度

set smartcase
set showbreak=➥ " 换行回绕标识符
set breakindent

set title
set autoread
set mouse=a " 鼠标支持

syntax on
filetype plugin on

set cursorline " 高亮当前行
set cursorlineopt=screenline " 当前行高亮模式

" 状态栏
set statusline=%<%f%=\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)%O'%02b'
hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red

" vim-plug configration
call plug#begin()
" Make sure you use single quotes

" The default plugin directory will be as follows:
" - vim (Linux/macOS): '~/.vim/plugged'
" You can specify a custom plugin directory by passing it as the argument
" - e.g. `call plug#begin('~/.vim/plugged')`
" Avoid using standard Vim directory names like 'plugin'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

call plug#end()
