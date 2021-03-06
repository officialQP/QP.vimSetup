set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim

set rtp+=$HOME/.vim/bundle/vundle
let path='$HOME/.vim/bundle'

call vundle#rc('$HOME/.vim/bundle')
set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Bundle 'gmarik/vundle'
"----------------COLORSCHEMES-----------------------------------------------
Bundle 'flazz/vim-colorschemes'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ColorSchemeMenuMaker'
Bundle 'desert-warm-256'
"----------------Plugins-----------------------------------------------------
Plugin 'VimIRC.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'nvie/vim-flake8'
Plugin 'itchyny/lightline.vim'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'sheerun/vim-polyglot'
Plugin 'vimwiki/vimwiki'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-latex/vim-latex'
Plugin 'scrooloose/nerdTree'
Plugin 'rkulla/pydiction'
Plugin 'hdima/python-syntax'
" All of your Plugins must be added before the following line
call vundle#end()           
filetype plugin indent on    
" Put your non-Plugin stuff after this line
colorscheme atom
inoremap jk <esc>
"Statusline setttins
set laststatus=2

set rnu
set number

"Latexsettings
let g:Tex_DefaultTargetFormat='pdf'
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
"additionstolatex
" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set sw=4
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:
let g:Tex_UsePython=0
"Setting format to compile with latex
"Making cursor always centered
set scrolloff=99999
" Set the cursor to not blink 
set guicursor=a:blinkon0

" size of a hard tabstop
set softtabstop=2
 "Setting font
set guifont=Prestige_Elite_Std:h14:b:cANSI 
 "-------------------Mappings-----------------------------
   map <up> <nop>
   map <down> <nop>
   map <left> <nop>
   map <right> <nop>

   imap <up> <nop>
   imap <down> <nop>
   imap <left> <nop>
   imap <right> <nop>

 "Mapping leaderkey and nerdtree button
   let mapleader = "ö" 
   nmap <leader>ne :NERDTreeToggle<cr>
 "Mapping f7 to autoformat
   map <F7> mzgg=G`z

   "--------------------------------------------------------------
" lazy method of appending this onto your .vimrc ":w! >> ~/.vimrc"
" ------------------------------------------------------------------
" this block of commands has been autogenerated by solarized.vim and
" includes the current, non-default Solarized option values.
" To use, place these commands in your .vimrc file (replacing any
" existing colorscheme commands). See also ":help solarized"
"Making the start of the line close to the midddle
set foldcolumn=0
" ------------------------------------------------------------------
" Solarized Colorscheme Config
" ------------------------------------------------------------------
let g:solarized_bold=0    "default value is 1
let g:solarized_underline=0    "default value is 1
let g:solarized_contrast="low"    "default value is normal
let g:solarized_visibility="low"    "default value is normal
let g:solarized_diffmode="low"    "default value is normal
syntax enable
set background=light

"Making a script that i can toggle vim gui with
function! ToggleGUICruft()
  if &guioptions=='i'
    exec('set guioptions=imTrL')
  else
    exec('set guioptions=i')
  endif
endfunction

map <F11> <Esc>:call ToggleGUICruft()<cr>

" by default, hide gui menus
set guioptions=i
"Mapping fulllscreen plugin
map <F1> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

" show a visual line under the cursor's current line
set nocursorline
"Setting colorcllumn to show where character 72 will on the line
set colorcolumn=0
" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1
 " visual autocomplete for command menu
set wildmenu   
let g:pydiction_location = 'C:\Users\SnabbareKonto\.vim\bundle\pydiction\complete-dict'
"Settings for Pydiction
let g:pydiction_menu_height = 3
"settings for cursor
set guicursor=n:ver50-iCursor
"Need for python
set modeline

let python_highlight_all = 1
"Probably have these already but to lazy to check 
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufWritePre *.py normal m`:%s/\s\+$//e
``
color atom
