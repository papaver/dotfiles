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

" map fugitive commands for easy access
:nnoremap <leader>g :ccl<cr>:silent Ggrep! <cword><cr>:redraw!<cr>
:vnoremap <leader>g y:ccl<cr>:silent Ggrep! <c-r>"<cr>:redraw!<cr>
:vnoremap <leader>* y/<c-r>"<cr>

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
autocmd BufNewFile,BufRead *.mm set ft=objc
autocmd BufNewFile,BufRead *.as set filetype=actionscript 
autocmd BufNewFile,BufRead *.mxml set filetype=mxml
autocmd BufNewFile,BufRead *.mako set filetype=mako
autocmd BufNewFile,BufRead *.shader set filetype=cg
autocmd BufNewFile,BufRead *.lss set filetype=less

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

" auto open quick fix window on grep
autocmd QuickFixCmdPost *grep* cwindow

"------------------------------------------------------------------------------
" clojure settings
"------------------------------------------------------------------------------

"let g:rbpt_colorpairs = [
"    \ ['darkgreen',   'RoyalBlue3'],
"    \ ['red',         'firebrick3'],
"    \ ['brown',       'RoyalBlue3'],
"    \ ['darkred',     'SeaGreen3'],
"    \ ['Darkblue',    'SeaGreen3'],
"    \ ['darkgreen',   'firebrick3'],
"    \ ['darkgray',    'DarkOrchid3'],
"    \ ['darkcyan',    'SeaGreen3'],
"    \ ['darkmagenta', 'DarkOrchid3'],
"    \ ['brown',       'firebrick3'],
"    \ ['gray',        'RoyalBlue3'],
"    \ ['darkmagenta', 'DarkOrchid3'],
"    \ ['Darkblue',    'firebrick3'],
"    \ ['darkred',     'DarkOrchid3'],
"    \ ['darkcyan',    'RoyalBlue3'],
"    \ ]
"
"au BufEnter *.clj RainbowParenthesesActivate
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces

"------------------------------------------------------------------------------
" misc settings
"------------------------------------------------------------------------------

set nu        " line numbers
set hlsearch  " highlight search
set incsearch " highlight next match

" status bar
set laststatus=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" esc for new macbook ;|
inoremap kj <Esc>
vnoremap kj <Esc>

"------------------------------------------------------------------------------
" commands
"------------------------------------------------------------------------------

nmap <C-k> <C-W><C-K><C-W><C-_> " move up split, maximize
nmap <C-j> <C-W><C-J><C-W><C-_> " move down split, maximize
nmap <C-H> <C-W><C-L>           " move left split
nmap <C-L> <C-W><C-H>           " move right split

nmap <C-h> :tabp<Enter>         " prev tab
nmap <C-l> :tabn<Enter>         " next tab
