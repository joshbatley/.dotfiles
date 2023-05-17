call plug#begin('~/.config/nvim/plugged')

Plug 'projekt0n/github-nvim-theme'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
Plug 'neovim/nvim-lspconfig'

call plug#end()

filetype plugin indent on
set nocompatible
set number
set ignorecase
set smartcase
set showmatch
set hlsearch
set incsearch
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set wildmode=longest,list
set cmdwinheight=10
set cursorline
set cursorlineopt=number

let g:mapleader = "'"
inoremap jj <ESC>
nnoremap <C-p> :GFiles<cr>

syntax on
colorscheme github_dark_dimmed

"" Autostart Coq
let g:coq_settings = { 'auto_start': 'shut-up' }

lua require('config')
