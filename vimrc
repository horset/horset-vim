" It's Marty's vimrc file.
set number
set autoindent
set backspace=indent,eol,start
set encoding=utf-8
set fileencoding=utf-8
syntax enable

" Key mapping
let mapleader="-"
nnoremap <leader>ev :tabe $MYVIMRC<cr>
"nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Disable arrow keys
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>
vnoremap <up> <nop>
vnoremap <down> <nop>

" Abbreviations
iabbrev myname Marty Chen

" Pluging manager: vim-plug
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes' 
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'altercation/vim-colors-solarized'
Plug 'majutsushi/tagbar'
Plug 'vimwiki/vimwiki'
"Plug 'Valloric/YouCompleteMe'
Plug 'lervag/vimtex'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" colorscheme
" vim-colors-solarized
"syntax enable
if has('gui_running')
    set background=light
else
    set background=dark
endif
let g:solarized_termcolors=256
colorscheme solarized

" airline
let g:airline_theme='luna'
let g:airline_powerline_fonts = 1
set guifont=Noto\ Mono\ for\ Powerline:h10

" tagbar
if has('win32') || has('win64')
" Remember to download the binary: https://github.com/universal-ctags/ctags-win32/releases
	let g:tagbar_ctags_bin = 'C:\ctags-2018-02-18_66b4867b-x86\ctags.exe'
endif
nmap <F8> :TagbarToggle<CR>

"vimwiki
let g:vimwiki_list = [{'maxhi': 0, 'css_name': 'style.css', 'auto_export': 0, 'diary_index': 'diary', 'template_default': 'default', 'nested_syntaxes': {}, 'auto_toc': 0, 'auto_tags': 0, 'diary_sort': 'desc', 'path': '$HOME\GoogleDrive\vimwiki/', 'diary_link_fmt':'%Y-%m-%d', 'template_ext': '.tpl', 'syntax': 'markdown', 'custom_wiki2html': '', 'automatic_nested_syntaxes': 1, 'index': 'index', 'diary_header': 'Diary', 'ext': '.md', 'path_html': '$HOME\GoogleDrive\vimwiki_html/', 'temp': 0, 'template_path': '$HOME\GoogleDrive\vimwiki\templates/', 'list_margin': -1, 'diary_rel_path': 'diary/'}]

"vimtex
if has('win32') || has('win64')
	let g:vimtex_view_method = 'general'
	let g:vimtex_view_general_viewer = 'SumatraPDF'
	let g:vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
	"let g:vimtex_view_general_options_latexmk = '-reuse-instance'
	"let g:vimtex_view_general_viewer = 'SumatraPDF'
	"let g:vimtex_view_general_options
	"	\ = '-reuse-instance -forward-search @tex @line @pdf'
	"	\ . ' -inverse-search "gvim --servername ' . v:servername
	"	\ . ' --remote-send \"^<C-\^>^<C-n^>'
	"	\ . ':drop \%f^<CR^>:\%l^<CR^>:normal\! zzzv^<CR^>'
	"	\ . ':execute ''drop '' . fnameescape(''\%f'')^<CR^>'
	"	\ . ':\%l^<CR^>:normal\! zzzv^<CR^>'
	"	\ . ':call remote_foreground('''.v:servername.''')^<CR^>^<CR^>\""'
endif
