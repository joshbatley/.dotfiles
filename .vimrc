set nocompatible

" Plugins
call plug#begin('~/.vim/plugged')

" Theming
Plug 'joshbatley/vim-colors-github'
Plug 'sheerun/vim-polyglot'

" Language
Plug 'fatih/vim-go'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'OmniSharp/omnisharp-vim'
Plug 'neoclide/coc.nvim'

" Misc
Plug 'editorconfig/editorconfig-vim'
Plug 'Yggdroot/indentLine'

call plug#end()

" Keybindings 
inoremap jj <ESC>

" Theme
set termguicolors
colorscheme github

" Indent line
let g:indentLine_setColor=0
let g:indentLine_enabled = 1
let g:indentLine_char = '▏'
let g:indentLine_color_term = 239
set conceallevel=1
let g:indentLine_conceallevel=1

" Misc
syntax on
set number
set ruler
set relativenumber
set hlsearch
set cursorline
set tabstop=4
set shiftwidth=4
set expandtab
set wrap
set linebreak

" Vim-go
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1

" Vim Omnisharp
let g:OmniSharp_server_path = '/Users/joshbatley/omnisharp-osx/run' 
