set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
Plugin 'tpope/vim-commentary'
Plugin 'fatih/vim-go'
Plugin 'Shougo/neocomplete.vim'

call vundle#end()
filetype plugin indent on
syntax on
syntax enable
set ruler

" Paste without indent changes
set pastetoggle=<F2>

" Allow backspace the freedom
set backspace=indent,eol,start

" Better location of <mapleader> key
let mapleader = ","

" Show tailing whitespaces as red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Color scheme
set t_Co=256
color wombat256mod

" Bind nohl
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Quick quit and save command
noremap <Leader>q :q!<CR>
noremap <Leader>w :w<CR>
noremap <Leader>e :wq<CR>
noremap ( :tabprev<CR>
noremap ) :tabnext<CR>

" Move around windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" indent without loosing selection
vnoremap < <gv
vnoremap > >gv

" Showing line numbers and length
set number
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

" Useful settings
set history=700
set undolevels=700

" Real programmers don't use TABs but spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab
set autoindent
set smarttab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" No backup so be careful
set nobackup
set nowritebackup
set noswapfile

" Settings for vim-powerline
set laststatus=2

" Powerline Setting
let g:Powerline_symbols = 'compatible'
let g:Powerline_colorscheme = 'solarized256'

" NERDTree
noremap <Leader>n :NERDTreeToggle<CR>

" Go-vim
let g:go_disable_autoinstall = 0

" ---- Neocomplete ----
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 2
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
