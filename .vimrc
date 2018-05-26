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

" jump to the last position when reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" indent by file type 
filetype plugin indent on

" make backspace work 'as expected'
set nocompatible
set backspace=indent,eol,start

" movements for long lines
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

" Set spelling for markdown and latex
autocmd FileType markdown setlocal spell
autocmd FileType tex setlocal spell

" Set visual highlight yellow
hi Visual cterm=NONE ctermfg=black ctermbg=yellow

" Set background color of current line.
set cursorline
hi CursorLine cterm=NONE ctermfg=NONE ctermbg=251

" Set fortran highlighting to free source, not fixed.
let fortran_free_source=1

" Makefile gets tabs, not spaces.
autocmd FileType make setlocal noexpandtab


" Set highlighting for f2py interface files to Fortran.
au BufReadPost *.pyf set syntax=fortran

" Show the 80 column mark and set its color.
set colorcolumn=80
hi ColorColumn ctermbg=230

" This is pretty annoying for small files,
" but useful for big ones with classes, etc.
" set foldmethod=indent
" set foldnestmax=2

" File explorer options
let g:netrw_banner = 0
let g:netrw_winsize = 15 " % of the window
let g:netrw_liststyle = 3 " tree style
let g:netrw_browse_split = 3 " open in newtab
let g:netrw_list_hide= '^\..*$,.*\.swp$,.*\.pyc'
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END
