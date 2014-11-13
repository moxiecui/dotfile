set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tomasr/molokai'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet'
Plugin 'honza/vim-snippets'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/matchit.zip'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-fugitive'
Plugin 'nvie/vim-togglemouse'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Theme
syntax enable
colorscheme molokai

" Supertab
let g:SuperTabDefaultCompletionType='<C-n>'

" Neocomplete
let g:neocomplete#enable_at_startup=1
let g:neocomplete#enable_ignore_case=1

" Neosnippet
imap <C-k> <Plug>(neosnippet_expand_or_jump)
imap <expr><Tab> neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)"
    \: pumvisible() ? "\<C-n>" : "\<Tab>"
if has('conceal')
    set conceallevel=2 concealcursor=i
endif
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" Airline
set laststatus=2
let g:airline_theme='badwolf'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_buffers=0
let g:airline#extensions#tabline#tab_nr_type=1

" GitGutter
let g:gitgutter_map_keys=0

" Syntastic
" :SyntasticInfo to list checkers
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_loc_list_height=5
let g:syntastic_stl_format='[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
function! ToggleError()
    if empty(filter(tabpagebuflist(), 'getbufvar(v:val, "&buftype") is# "quickfix"'))
        Errors
    else
        lclose
    endif
endfunction

" CtrlP
let g:ctrlp_cmd='CtrlP'
set wildignore+=*/Library/*
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|Trash|cache|vim|oh-my-zsh|config|ssh)$',
    \ 'file': '\v\.(swp|zip|so)$'
    \ }
let g:ctrlp_by_filename=1
let g:ctrlp_match_window_bottom=0
let g:ctrlp_match_window_reversed=0
let g:ctrlp_use_caching=1
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_show_hidden=1
let g:ctrlp_regexp=1

" Indent-guides
let g:indent_guides_auto_colors=0
highlight IndentGuidesOdd ctermbg=234
highlight IndentGuidesEven ctermbg=236
let g:indent_guides_guide_size=1
let g:indent_guides_start_level=2
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_exclude_filetypes=['help', 'nerdtree']

" delimitMate
let delimitMate_matchpairs='(:),[:],{:}'

let mapleader=','

nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :call ToggleError()<CR>
nmap <F8> :TagbarToggle<CR>

" Tab navigation
let g:ctrlp_map='<C-p>'
nmap <C-n> :CtrlPCurWD<CR>
nmap <C-Right> gt
nmap <C-Left> gT
nmap <Leader>1 1gt
nmap <Leader>2 2gt
nmap <Leader>3 3gt
nmap <Leader>4 4gt
nmap <Leader>5 5gt
nmap <Leader>6 6gt
nmap <Leader>7 7gt
nmap <Leader>8 8gt
nmap <Leader>9 9gt
nmap <Leader>n :tabnew<CR>

" Up and Down
nmap <Up> gk
nmap <Down> gj
imap <Up> <C-o>gk
imap <Down> <C-o>gj
vmap <Up> gk
vmap <Down> gj

" Ctrl-e and Ctrl-y
imap <C-e> <C-o><C-e>
imap <C-y> <C-o><C-y>

" Ctrl-s
map <C-s> :w<CR>
imap <C-s> <C-o>:w<CR>
vmap <C-s> <C-c>:w<CR>

set number
set hlsearch
set incsearch
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set cursorline
set colorcolumn=80
set backspace=indent,eol,start
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
set title
set mouse=a
set shortmess=atI

autocmd FileType * set formatoptions-=c formatoptions-=r formatoptions-=o
autocmd BufWritePre * :%s/\s\+$//e
autocmd CursorMovedI,CursorMoved * GitGutterEnable
