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

""inoremap " ""<left>
""inoremap ' ''<left>
""inoremap ( ()<left>
""inoremap [ []<left>
""inoremap { {}<left>
""inoremap (<CR> (<CR>)<ESC>O
""inoremap (;<CR> (<CR>);<ESC>O
""inoremap {<CR> {<CR>}<ESC>O
""inoremap {;<CR> {<CR>};<ESC>O

tnoremap <Esc> <C-\><C-n>

nnoremap <silent> <C-P> :RnvimrToggle<CR>
nnoremap <silent> <C-L> :FZF<CR>

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
    Plug 'kevinhwang91/rnvimr'

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

" Startify configuration
let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'files',     'header': ['   MRU']            },
      \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]

let g:startify_bookmarks = [
            \ { 'c': '~/.config/nvim/init.vim' },
            \ { 'b': '~/.bashrc' },
            \ '~/School',
            \ ]

let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

let g:airline_theme='iceberg'
colorscheme iceberg

"au VimEnter *  NERDTree
