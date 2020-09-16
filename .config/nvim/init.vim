set number
syntax enable

set termguicolors

set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set autoindent
filetype indent off

set mouse=a

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap (<CR> (<CR>)<ESC>O
inoremap (;<CR> (<CR>);<ESC>O
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

tnoremap <Esc> <C-\><C-n>

cmap CC CocCommand
cmap NT NERDTreeToggle

let g:winresizer_start_key = '<C-T>'

call plug#begin('~/.config/nvim/plugged')

    " Development enhancing plugins
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf'
	Plug 'mcchrish/nnn.vim'
	Plug 'preservim/nerdtree'
    Plug 'simeji/winresizer'

    " Language specific plugins
    Plug 'dart-lang/dart-vim-plugin'

    " Visual enhancing plugins
    Plug 'mhinz/vim-startify'
	Plug 'arakashic/chromatica.nvim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'junegunn/goyo.vim'

    " Color schemes
    Plug 'arcticicestudio/nord-vim'
    Plug 'joshdick/onedark.vim'
    Plug 'altercation/vim-colors-solarized'
	Plug 'dracula/vim', { 'name': 'dracula' }

call plug#end()

let g:airline_theme='iceberg'
colorscheme iceberg

au VimEnter *  NERDTree
