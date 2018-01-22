" Reload vimrc while editing vimrc:
" :so %
let mapleader=","

" The basic stuff.
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smarttab
set number
set mouse=a
set wildmode=longest,list,full
set wildmenu
set spelllang=en_us
set display=lastline " for long lines.
set linebreak " break lines on word boundaries, not in the middle of words.

" Set visual highlight yellow
hi Visual cterm=NONE ctermfg=black ctermbg=yellow

" Set background color of current line.
set cursorline
"hi CursorLine cterm=NONE ctermfg=NONE ctermbg=239

" Set fortran highlighting to free source, not fixed.
let fortran_free_source=1

" Show the 80 column mark and set its color.
set colorcolumn=80
hi ColorColumn ctermbg=239

" This is pretty annoying for small files,
" but useful for big ones with classes, etc.
" set foldmethod=indent
" set foldnestmax=2
