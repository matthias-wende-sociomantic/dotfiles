let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized light'

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'landaire/deoplete-d'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
call plug#end()

set number
set mouse=a

let g:airline_powerline_fonts = 1
let g:airline_theme='deus'

" vim colors solarized
syntax enable
set background=light
colorscheme solarized

" load old vim configurations
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" custom keyboard mappings

nnoremap <silent> <expr> <Leader><Leader> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"
nnoremap <silent> <Leader>c        :Commits<CR>
nnoremap <silent> <Leader>C        :Colors<CR>
nnoremap <silent> <Leader><Enter>  :Buffers<CR>
nnoremap <silent> <Leader>l        :Lines<CR>
nnoremap <silent> <Leader>ag       :Ag <C-R><C-W><CR>
nnoremap <silent> <Leader>AG       :Ag <C-R><C-A><CR>
xnoremap <silent> <Leader>ag       y:Ag <C-R>"<CR>
nnoremap <silent> <Leader>` :Marks<CR>

nnoremap <Leader>t :tabnew<CR>
nmap <F8> :NERDTreeToggle<CR>
nmap <F9> :TagbarToggle<CR>

noremap <f11> i/<esc>80A*<Esc>d80\|o<esc>o<bs><tab>
inoremap <f11> /<Esc>80A*<Esc>d80\|o<esc>o<bs><tab>
noremap <f12> 80A*<Esc>d80\|r/o<esc>o
inoremap <f12> i<esc>x80A*<Esc>d80\|r/o<esc>o

" code completion
let g:deoplete#enable_at_startup = 1
set completeopt-=preview

" dutyl
" let g:dutyl_stdImportPaths=['/usr/include/dmd']
" call dutyl#register#tool('dcd-client','/usr/bin/dcd-client')
" call dutyl#register#tool('dcd-server','/usr/bin/dcd-server')
