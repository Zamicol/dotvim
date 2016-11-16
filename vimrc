"In addition to the following settings
"I suggest:
"--map caps lock as an additional ctrl key system wide.

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"See if nerdtree is installed.  If not, probably nothing else is
let nerd_readme=expand('~/.vim/bundle/nerdtree/README.markdown')
if !filereadable(nerd_readme)
	echo "Installing Bundles"
	:PluginInstall
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

"Set the tab size
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
"conflicts with visual block.  use f4
"nmap <C-V> "+gP
"imap <C-V> <ESC><C-V>i
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

"qbit hack - save as root using :W
command! -bar -nargs=0 W  silent! exec "write !sudo tee % >/dev/null"  | silent! edit!

"Bash like line navigation
:map <C-a> <Home>
:map <C-e> <End>
"draw the screen with the current line at the top (like bash clear)
:map <C-l> zt
