" CYBERDECK // vim
" a neon editor for writing C in the rain.
" F5 compile+run // F6 make run // F7 memcheck // F8 debug

set nocompatible
syntax on
filetype plugin indent on
set number cursorline ruler showcmd laststatus=2 scrolloff=5
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab autoindent cindent
set showmatch hlsearch incsearch ignorecase smartcase
set colorcolumn=80 mouse=a backspace=indent,eol,start
set tags=./tags;
set statusline=\ %f\ %m%r%=%y\ \ %l:%c\ \

set background=dark
hi clear
hi Normal       ctermfg=15   ctermbg=NONE
hi Comment      ctermfg=8
hi Constant     ctermfg=3
hi String       ctermfg=3
hi Character    ctermfg=3
hi Number       ctermfg=11
hi Identifier   ctermfg=14   cterm=NONE
hi Function     ctermfg=14
hi Statement    ctermfg=1    cterm=bold
hi PreProc      ctermfg=5
hi Type         ctermfg=6    cterm=bold
hi Special      ctermfg=13
hi Todo         ctermfg=0    ctermbg=3
hi Error        ctermfg=15   ctermbg=1
hi ErrorMsg     ctermfg=15   ctermbg=1
hi LineNr       ctermfg=8
hi CursorLineNr ctermfg=1    cterm=bold
hi CursorLine   ctermbg=0    cterm=NONE
hi ColorColumn  ctermbg=0
hi StatusLine   ctermfg=0    ctermbg=1  cterm=bold
hi StatusLineNC ctermfg=8    ctermbg=0  cterm=NONE
hi VertSplit    ctermfg=8    ctermbg=NONE cterm=NONE
hi Visual       ctermbg=4
hi Search       ctermfg=0    ctermbg=6
hi IncSearch    ctermfg=0    ctermbg=1
hi MatchParen   ctermfg=0    ctermbg=1
hi Pmenu        ctermfg=6    ctermbg=0
hi PmenuSel     ctermfg=0    ctermbg=1

nnoremap <F5> :w<CR>:!clear; run %<CR>
nnoremap <F6> :w<CR>:!clear; make -s run<CR>
nnoremap <F7> :w<CR>:!clear; gcc -Wall -Wextra -g -o prog % && valgrind --leak-check=full ./prog<CR>
nnoremap <F8> :w<CR>:!gcc -Wall -Wextra -g -o prog % && cgdb ./prog<CR>
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>
