" It's Marty's vimrc file.
:set number
:set autoindent
:set backspace=indent,eol,start

" Key mapping
:let mapleader="-"
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

" Disable arrow keys
:inoremap <left> <nop>
:inoremap <right> <nop>
:inoremap <up> <nop>
:inoremap <down> <nop>
:nnoremap <left> <nop>
:nnoremap <right> <nop>
:nnoremap <up> <nop>
:nnoremap <down> <nop>
:vnoremap <left> <nop>
:vnoremap <right> <nop>
:vnoremap <up> <nop>
:vnoremap <down> <nop>

" Abbreviations
:iabbrev myname Marty Chen

