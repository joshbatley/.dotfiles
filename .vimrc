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
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Misc
Plug 'editorconfig/editorconfig-vim'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'

call plug#end()

" Keybindings 
let mapleader = "'"
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
inoremap jj <ESC>
inoremap jk <ESC>
" Tabs
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>W <C-w>S<C-w>j
nnoremap <leader>q <C-w>q
nnoremap <leader>s <C-w><C-w>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Custom
nnoremap <leader>c :noh<CR>

" Theme
set termguicolors
colorscheme github

let g:airline_theme = "github"

" Indent line
let g:indentLine_setColor = 0
let g:indentLine_enabled = 1
let g:indentLine_char = '▏'
let g:indentLine_color_term = 239
set conceallevel=1
let g:indentLine_conceallevel = 1

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
set signcolumn=yes
set hidden
set updatetime=300
set visualbell
set encoding=UTF-8
set smartindent
filetype plugin on
au FocusLost * :wa

" Vim-go
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_code_completion_enabled = 0
let g:go_def_mapping_enabled = 0
let g:go_doc_keywordprg_enabled = 0
let g:go_doc_popup_window = 0

" Vim Omnisharp
" let g:OmniSharp_server_path = '/Users/josh/omnisharp-osx/run' 
autocmd FileType cs nmap <silent> <buffer> gd <plug>(omnisharp_go_to_definition)
autocmd FileType cs nmap <silent> <buffer> gr <plug>(omnisharp_find_usages)
autocmd FileType cs nmap <silent> <buffer> gi <plug>(omnisharp_find_implentations)

" NerdCommenter
let g:NERDSpaceDelims = 2
let g:NERDTrimTrailingWhitespace = 2

" NerdTree
nnoremap <leader>n :NERDTreeFind<CR>
nnoremap <leader>N :NERDTreeToggle<CR>

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" coc
set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c
let g:coc_global_extensions = ['coc-html', 'coc-eslint', 'coc-tsserver', 'coc-json', 'coc-go', 'coc-css', 'coc-rust-analyzer', 'coc-eslint']

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implemenations)
nmap <silent> gr <Plug>(coc-references)

inoremap <expr> <TAB> pumvisible() ? coc#_select_confirm() : "<TAB>"
nnoremap <silent> K :call <SID>show_documentation()<CR>
inoremap <silent><expr> <c-space> coc#refresh()

inoremap <expr> <down> pumvisible() ? "\<C-n>" : ""
inoremap <expr> <up> pumvisible() ? "\<C-p>" : ""

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
