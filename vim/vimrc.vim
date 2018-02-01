" turn filetype detection off and, even if it's not strictly
" necessary, disable loading of indent scripts and filetype plugins
filetype off
filetype plugin indent off

" pathogen runntime injection and help indexing
call pathogen#infect()
call pathogen#helptags()

" turn filetype detection, indent scripts and filetype plugins on
filetype plugin indent on

" and syntax highlighting too
syntax on

" leader
let mapleader=","

set clipboard^=unnamed,unnamedplus " merge with system clopboard

set hlsearch		" highlight search results
set nocompatible	" disable vi-compatibility
set showmode		" always show what mode we're currently editing in
set list		" show whitespaces
set number		" show line numbers
set mouse=a		" enable mouse
set showcmd		" show <leader> pressed
set cursorline		" highlight current line
set wildmenu		" show mathch files as menu when use TAB
set lazyredraw		" redraw only when we need to

set ignorecase		" ignore case when searching
set smartcase		" ignore case if search pattern is all lowercase

set cm=blowfish2	" set default encryption to blowfish2 algorithme

" Motion mappings
	nnoremap H 0
	nnoremap L $
	nnoremap J G
	nnoremap K gg

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

"set showmatch		" highlight matching [{()}]	ALREADY WORKS VIA vim-sensitive
"nnoremap j gj		" move vertically by visual line	
"nnoremap k gk		" ALREADY WORKS VIA vim-sensitive

" map select all to CTRL-a
map <C-a> <esc>ggVG<CR>

"""""
""""" plugins settings
"""""

" settings for flagship.vim
set laststatus=2	" always show the statusline
set showtabline=2	" always show the statusline
set guioptions-=e	" disable GUI tabline

" settings for look and feel
let g:enable_bold_font = 1
let g:enable_italic_font = 1
colorscheme smyck

" format xml
set equalprg=xmllint\ --format\ -
