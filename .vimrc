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

" Move around windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" indent without loosing selection
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Tagbar
noremap <F8> :TagbarToggle<CR>
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
noremap <F9> :NERDTreeToggle<CR>

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

" call pathogen to load plugins
call pathogen#infect()

" ============================================================================
" Python IDE Setup
" ============================================================================

" Settings for vim-powerline
set laststatus=2


" Settings for ctrlp
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" Settings for python-mode
map <Leader>g :call RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Better navigating through omnicomplete option list
set completeopt=longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction

inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>

" Powerline Setting
let g:Powerline_symbols = 'compatible'
let g:Powerline_colorscheme = 'solarized256'

" Supertab Setting
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
