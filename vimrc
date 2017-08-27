"
"---------------------------------------------  PLUG ------------------------
"
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

"Plug 'ctrlpvim/ctrlp.vim'
Plug 'joonty/vim-sauce.git'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'bling/vim-airline'
Plug 'ntpeters/vim-better-whitespace'
Plug 'jonathanfilip/vim-lucius'

" Initialize plugin system
call plug#end()
"
"---------------------------------------------  PLUG  ------------------------
"






"
" === General settings =======================================================
"
set backspace=2 " make backspace work like most other apps
set number
"let mapleader = "," "changing <leader> from \ to ,


"
" === Enable tabbing settings ================================================
"
syntax on
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set colorcolumn=80


"
" === Whitespace and tab settings ============================================
"
let g:indentLine_char = '┊'
set listchars=tab:▸\ ,eol:¬
set list

colors slate

set t_Co=256
silent! colorscheme elflord
silent! colorscheme solarized
silent! colorscheme lucius
set background=dark

set nofoldenable " disable folding

set splitright
set splitbelow

" Enable move line up/down by Alt+j and Alt+k
nnoremap √ :m .+1<CR>==
nnoremap ª :m .-2<CR>==
inoremap √ <Esc>:m .+1<CR>==gi
inoremap ª <Esc>:m .-2<CR>==gi
vnoremap √ :m '>+1<CR>gv=gv
vnoremap ª :m '<-2<CR>gv=gv


"
" Airline configuration
"
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_idx_mode = 1
set laststatus=2
set ttimeoutlen=50
