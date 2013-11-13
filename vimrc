"In addition to the following settings
"I suggest:
"--map caps lock as an additional ctrl key system wide.  

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

nmap <Leader>bi :BundleInstall<CR>
nmap <Leader>bi! :BundleInstall!<CR>
nmap <Leader>bu :BundleInstall!<CR>
nmap <Leader>bc :BundleClean<CR>

"Vundle manage Vundle
"required! 
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'scrooloose/syntastic'
Bundle 'bling/vim-airline'

"See if nerdtree is installed.  If not, probably nothing else is
let nerd_readme=expand('~/.vim/bundle/nerdtree/README.markdown')
if !filereadable(nerd_readme)
	echo "Installing Bundles"
	:BundleInstall
	"close out window bundleinstall opens
	:q
endif

syntax on
set encoding=utf-8

"change leader to ,
let mapleader = ","

"Set to auto read when a file is changed from the outside
set autoread

"Highlight variable under the cursor
:autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

"Show line numbers
":set number

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#whitespace#enabled=1
let g:airline_enable_syntastic=1
let g:airline_enable_fugitive=1
let g:airline_theme='dark'

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_linecolumn_prefix = '¶ '
let g:airline_paste_symbol = 'ρ'
let g:airline_paste_symbol = 'Þ'

"Autoindent
set autoindent

"Stop crazy tabbing on paste
":set paste!
set pastetoggle=<F2>

"not sure if this even does anything at this point
filetype indent plugin on

"Set the tab size to 4
set tabstop=4

"enter back into command mode using shorter commands
inoremap jj <ESC>

"start NERDTree on startup and change focus to window
autocmd VimEnter * NERDTreeTabsOpen
autocmd VimEnter * wincmd w
