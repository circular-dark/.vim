" Paste without indent changes
set pastetoggle=<F2>

" Better location of <mapleader> key
let mapleader = ","

" Show tailing whitespaces as red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Color scheme
set t_Co=256
color wombat256mod

" Enable syntax highlighting
filetype off
call pathogen#infect()
filetype plugin indent on
syntax on

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
set tabstop=8
set softtabstop=8
set shiftwidth=8
set shiftround
set noexpandtab
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

" Tagbar
noremap <Leader>b :TagbarToggle<CR>

" Syntastic
let g:syntastic_auto_loc_list = 2
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['cpp', 'c', 'sml', 'python', 'go'],
                           \ 'passive_filetypes': [] }
" let g:syntastic_cpp_compiler = 'clang++'
" let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:syntastic_c_gcc_args = '-Wall -Werror -gdwarf-2 -O0 -m32 -fno-stack-protector -fno-omit-frame-pointer -Itraceback/ -mpreferred-stack-boundary=2 -static'

" autoclose
let g:AutoClosePairs = "() {} []"
