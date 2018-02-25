" It's Marty's vimrc file.
:set number
:set autoindent
:set backspace=indent,eol,start
:set encoding=utf-8
:set fileencoding=utf-8
:syntax enable
:set background=dark
:let g:solarized_tremcolors=256
":colorscheme solarized

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

" Pluging manager: vim-plug
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'altercation/vim-colors-solarized'
Plug 'majutsushi/tagbar'
"Plug 'Valloric/YouCompleteMe'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


" tagbar
" Remember to download the binary: https://github.com/universal-ctags/ctags-win32/releases
let g:tagbar_ctags_bin = 'C:\ctags-2018-02-18_66b4867b-x86\ctags.exe'
nmap <F8> :TagbarToggle<CR>

