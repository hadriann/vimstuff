if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'https://github.com/ludovicchabant/vim-gutentags'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'leafgarland/typescript-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'chriskempson/base16-vim'

call plug#end()

set nocompatible
set noexrc

filetype on
filetype plugin on
filetype indent on

syntax enable

set mouse=r
set ttyfast
set encoding=utf-8
set title
set history=1000
set autoread
set wildmenu
set wildmode=list:longest,full
set wildignore=.svn,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.gif

set ruler
set relativenumber
set cursorline
set laststatus=2
set showmatch
set showcmd
set visualbell

set autoindent
set smartindent
set backspace=indent,eol,start
set scrolloff=3
set undofile

set hlsearch
set incsearch
set ignorecase
set infercase
set smartcase

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set completeopt=longest,menu

set foldmethod=marker
set foldmarker={,}
set foldlevelstart=100

set t_Co=256
set background=dark
colorscheme PaperColor
"colorscheme base16-default-dark

"autocmd BufRead * NERDTreeFind
autocmd BufWritePre * :%s/\s\+$//e

let html_no_rendering=1
let mapleader=','

map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

""" show spaces
map <leader>s :set list!<CR>

""" show highlighting
map <leader>h :set hlsearch!<CR>

""" php lint
map <leader>p :!php -l %<CR>

""" ctrlp
map <C-b> :CtrlPBuffer<CR>
let g:ctrlp_working_path_mode = 0
let g:ctrlp_by_filename = 1
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:20,results:50'
let g:ctrlp_max_files = 0

""" nerdtree
map <leader>n :NERDTreeFind<CR>
map <leader>m :NERDTreeToggle<CR>
