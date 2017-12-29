" REQUIRED. This makes vim invoke latex-suite when you open a tex file.
filetype plugin on
"
" " IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" " can be called correctly.
" set shellslash
"
" " IMPORTANT: grep will sometimes skip displaying the file name if you
" " search in a singe file. This will confuse latex-suite. Set your grep
" " program to alway generate a file-name.
" set grepprg=grep\ -nH\ $*
"
" " OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
" let g:tex_flavor='latex'

" Number of spaces to use for each step of (auto)indent.  Used for |'cindent'|, |>>|, |<<|, etc.
" set shiftwidth=8
set sts=0 sw=4 ts=4
autocmd BufWritePre <buffer> :%s/\s\+$//e
autocmd FileType d :setl cinoptions=(0,u0,U0
autocmd FileType d set et

" OPTIONAL: This enables code folding
set foldenable " Turn on folding
set foldmethod=syntax
set foldcolumn=1 " Give 1 column for fold markers

let mapleader=","

" autocmd FileType tex setlocal spell spelllang=de,en_us
" autocmd FileType tex setlocal spell spelllang=de
" set spellfile=~/.vim/spell/en.utf-8.add

autocmd FileType d set spell

let g:NERDSpaceDelims = 1

set colorcolumn=81
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)
