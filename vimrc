" Pathogen
execute pathogen#infect()

" Enable filetype plugins
filetype plugin on
filetype indent on
syntax on
set encoding=utf-8

" Set to auto read when a file is changed from the outside
set autoread

" Highlight variable under the cursor
:autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

"Show line numbers
:set number

" Autoindent
set autoindent

" Set the tab size to 4
set tabstop=4

"enter back into command mode using shorter commands
inoremap jj <ESC>

"start NERDTree on startup and change focus to window
autocmd VimEnter * NERDTreeTabsOpen
autocmd VimEnter * wincmd w
