"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Let's just do a basic one here. No plugins, etc. Just one simple .vimrc file
" with the default vim I have.
"
" (c) February 2017 by Daniel Seita
" (Well, based on a lot of stuff online ...)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set 10 lines to the cursor - when moving vertically using j/k.
set scrolloff=10

" Set the line numbers to be on the left hand side.
set number

" Set the number of characters before breaking to a new line.
set textwidth=80

" Use (4) spaces instead of tabs (tabstop and shiftwidth apply to different
" cases I think).
set expandtab
set tabstop=4
set shiftwidth=4

" Set default syntax on (usually good enough for me).
syntax on

" Status line. Huh, I didn't know this existed.
set laststatus=2
set ruler

" Set spell checking for certain file extensions.
autocmd BufRead,BufNewFile *.md set spell spelllang=en_us
autocmd BufRead,BufNewFile *.tex set spell spelllang=en_us
autocmd BufRead,BufNewFile *.txt set spell spelllang=en_us

" Return to last edit position when opening files (cool!).
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Try to be smart when indenting. TODO check if this is deprecated.
set autoindent
set smartindent

set history=10000 " Store lots of :cmdline history

" write changes to file to make undo persistent between vim sessions.
" Keep undo history across sessions by storing it in a file
if has('persistent_undo') && isdirectory($HOME . '/.vim/backups')
  silent !mkdir $HOME/.vim/backups > /dev/null 2>&1
  set undodir= $HOME . /.vim/backups
  set undofile
endif

set ignorecase " Ignore case when searching...
set smartcase  " ...unless we type a capital
set infercase  " smarter dictionary completion

" Don't use plaintex
let g:tex_flavor = 'latex'

" Not sure if this isimportant, but file encoding.
set encoding=utf-8
set fileencoding=utf-8
