colorscheme elflord

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