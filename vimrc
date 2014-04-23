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
Bundle 'Blackrush/vim-gocode'

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

"display line numbers
:set number
"display line cursor is on
:set cursorline

highlight Cursor guifg=white guibg=white
"change leader to ,
let mapleader = ","

"Set to auto read when a file is changed from the outside
set autoread

"Highlight variable under the cursor
":autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))
:set hlsearch

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#whitespace#enabled=1
let g:airline_enable_syntastic=1
let g:airline_enable_fugitive=1
let g:airline_theme='light'

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
set pastetoggle=<F4>

"sessions
map <F2> :mksession! ~/vim_session <cr> " Quick write session with F2
map <F3> :source ~/vim_session <cr>     " And load session with F3

"not sure if this even does anything at this point
filetype indent plugin on

"Set the tab size to 4
set tabstop=2

" vim tabs
" tab navigation like firefox
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

"Laziness extreme!
nnoremap ; :

"enter back into command mode using shorter commands
inoremap jj <ESC>

"fast exit using qq
nnoremap QQ :q!<CR>
inoremap QQ <ESC>:q!<CR>

"start NERDTree on startup and change focus to window
"autocmd VimEnter * NERDTreeTabsOpen
"let NERDTreeShowBookmarks=1
"autocmd VimEnter * wincmd w

"copy and paste in gvim
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y

"Colorscheme.  Be kind to the colorblind!
if has("gui_running")
	colorscheme cobalt
endif

"Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1


"go
" Clear filetype flags before changing runtimepath to force Vim to reload them.
  filetype off
  filetype plugin indent off
  set runtimepath+=$GOROOT/misc/vim
  filetype plugin indent on
  syntax on

	"qbit hack - save as root
	command! -bar -nargs=0 W  silent! exec "write !sudo tee % >/dev/null"  | silent! edit!
