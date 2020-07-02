" ------
" Syntax
" ------
syntax on
set t_Co=256
colorscheme onehalfdark
let g:airline_theme='onehalfdark'

" ------
" Indent
" ------ 
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

let mapleader = ","

" toggle code paste mode
nmap <silent> <leader>p :set paste!<CR>

" ----------
" Navigation
" ----------
" show hybrid line numbers
" map for toggling line numbers
nmap <silent> <leader>l :set nu! rnu!<CR>

" ctags
set tags=./tags;

set incsearch
set mouse+=a

" --------------
" Spell Checking
" --------------
set spelllang=en_us
set spellfile=$HOME/.vim/en.utf-8.add
nmap <silent> <leader>s :set spell!<CR>
hi clear SpellBad
hi SpellBad cterm=underline

" Remap visual block mode from Ctrl-v to q as it conflicts with paste on
" Windows
nnoremap q <C-v>

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
