"------------------------------------------------------------------------------
" bundle plugin support
"------------------------------------------------------------------------------

execute pathogen#infect()

"------------------------------------------------------------------------------
" plugins
"------------------------------------------------------------------------------

" a.vim
let g:alternateExtensions_h = "c,cpp,cxx,cc,m"
let g:alternateExtensions_m = "h"

" solarized
let g:solarized_menu=0

"------------------------------------------------------------------------------
" tab settings
"------------------------------------------------------------------------------

set expandtab    " expandtab  - insert spaces for tabs
set tabstop=4    " tabstop    - # of space chars inserted when tab pressed
set shiftwidth=4 " shiftwidth - # of space chars inserted for indentation

filetype plugin indent on

"------------------------------------------------------------------------------
" color settings
"------------------------------------------------------------------------------

:syntax enable
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
:colorscheme solarized
hi LineNr ctermbg=black

" synatx highlighting
autocmd BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl,*.vsh,*.fsh set ft=glsl
autocmd BufNewFile,BufRead *.sdl set ft=sl
autocmd BufNewFile,BufRead *.m set ft=objc
autocmd BufNewFile,BufRead *.as set filetype=actionscript 
autocmd BufNewFile,BufRead *.mxml set filetype=mxml
autocmd BufNewFile,BufRead *.mako set filetype=mako
autocmd BufNewFile,BufRead *.shader set filetype=cg

"------------------------------------------------------------------------------
" text settings
"------------------------------------------------------------------------------

set nowrap
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

"------------------------------------------------------------------------------
" file settings
"------------------------------------------------------------------------------

set dir=~/.vimswap " set swap directory

"------------------------------------------------------------------------------
" code settings
"------------------------------------------------------------------------------

"------------------------------------------------------------------------------
" misc settings
"------------------------------------------------------------------------------

set nu       " line numbers
set hlsearch " highlight search

" status bar
set laststatus=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

"------------------------------------------------------------------------------
" commands
"------------------------------------------------------------------------------

nmap <C-k> <C-W><C-K><C-W><C-_> " move up split, maximize
nmap <C-j> <C-W><C-J><C-W><C-_> " move down split, maximize
nmap <C-H> <C-W><C-L>           " move left split
nmap <C-L> <C-W><C-H>           " move right split

nmap <C-h> :tabp<Enter>         " prev tab
nmap <C-l> :tabn<Enter>         " next tab
