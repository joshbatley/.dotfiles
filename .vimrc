set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

call vundle#end()
filetype plugin indent on

" ======= Keybindins =========
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" ======== General ========
syntax on                   " Turn syntax highlighting on
colorscheme onedark         " One dark theme set smartindent
set tabstop=2               " number of visual spaces per tab
set shiftwidth=2            " number of spaces per command indent
set softtabstop=2           " number of spaces in tab when editing
set expandtab               " tab to spaces
set number                  " show line numbers
set cursorline              " highlight current line
set showmatch               " highlight matching [{()}]
set ruler                   " turn of line numbers
set relativenumber          " set relative number to current line 
set incsearch               " search as characters are entered
set hlsearch                " highlight matches
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*

set splitright
set splitbelow
" Set the working directory to wherever the open file lives (can be problematic)
set autochdir
" Show file options above the command line
set wildmenu
" Don’t offer to open certain files/directories
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=*.map,*.min.css
set wildignore+=node_modules/*,bower_components/*

" ======= NERDTree ======
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:airline_powerline_fonts = 1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" ======= Color ======== 
if (empty($TMUX))
  if (has("nvim"))
     let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif