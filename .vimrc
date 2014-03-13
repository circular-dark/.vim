" Paste without indent changes
set pastetoggle=<F2>

" Better location of <mapleader> key
let mapleader = ","

" Bind nohl
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Quick quit and save command
noremap <Leader>q :q!<CR>
noremap <Leader>w :w<CR>
noremap <Leader>e :wq<CR>
noremap <Leader>E :wqa<CR>
noremap ( :tabprev<CR>
noremap ) :tabnext<CR>

" Move around windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" indent without loosing selection
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Tagbar
noremap <Leader>b :TagbarToggle<CR>
let g:tagbar_type_c = {
    \ 'kinds' : [
        \ 'd:macros:1:0',
        \ 'p:prototypes:1:0',
        \ 'g:enums',
        \ 'e:enumerators',
        \ 't:typedefs',
        \ 's:structs',
        \ 'u:unions',
        \ 'm:members',
        \ 'v:variables',
        \ 'f:functions',
    \ ],
\ }

" NERDTree
noremap <Leader>n :NERDTreeToggle<CR>

" Syntastic
let g:syntastic_auto_loc_list=1

" autoclose
let g:AutoClosePairs = "() {} \" ' []"

" clang_complete
let g:clang_snippets = 1
let g:clang_snippets_engine = 'ultisnips'
let g:clang_sort_algo = "none"
let g:clang_auto_select = 2

" Show whitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Color scheme
set t_Co=256
color wombat256mod

" Enable syntax highlighting
filetype off
filetype plugin indent on
syntax on

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
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

set nobackup
set nowritebackup
set noswapfile

" Settings for vim-powerline
set laststatus=2

" Powerline Setting
let g:Powerline_symbols = 'compatible'
let g:Powerline_colorscheme = 'solarized256'

" Supertab Setting
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" call pathogen to load plugins
call pathogen#infect()

" ============================================================================
" Python IDE Setup
" ============================================================================

" Settings for ctrlp
autocmd Filetype python let g:ctrlp_max_height = 30
autocmd Filetype python set wildignore+=*.pyc
autocmd Filetype python set wildignore+=*_build/*
autocmd Filetype python set wildignore+=*/coverage/*

" Settings for python-mode
autocmd Filetype python map <Leader>g :call RopeGotoDefinition()<CR>
autocmd Filetype python let ropevim_enable_shortcuts = 1
autocmd Filetype python let g:pymode_rope_goto_def_newwin = "vnew"
autocmd Filetype python let g:pymode_rope_extended_complete = 1
autocmd Filetype python let g:pymode_breakpoint = 0
autocmd Filetype python let g:pymode_syntax = 1
autocmd Filetype python let g:pymode_syntax_builtin_objs = 0
autocmd Filetype python let g:pymode_syntax_builtin_funcs = 0
autocmd Filetype python let g:pymode_lint_checker = "pep8"
autocmd Filetype python map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

autocmd FileType go autocmd BufWritePre <buffer> Fmt
