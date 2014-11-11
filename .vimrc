set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
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

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Theme
syntax enable
set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized
colorscheme molokai

" Supertab
let g:SuperTabDefaultCompletionType='<C-n>'

" Neocomplete
let g:neocomplete#enable_at_startup=1
let g:neocomplete#enable_ignore_case=1

" Neosnippet
imap <C-k> <Plug>(neosnippet_expand_or_jump)
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)"
    \: pumvisible() ? "\<C-n>" : "\<TAB>"
if has('conceal')
    set conceallevel=2 concealcursor=i
endif
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" Airline
set laststatus=2
let g:airline_theme='badwolf'
let g:airline_powerline_fonts=1

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
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'
let g:ctrlp_working_path_mode='ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ }
let g:ctrlp_by_filename=1
let g:ctrlp_match_window_bottom=0
let g:ctrlp_match_window_reversed=0
let g:ctrlp_use_caching=1
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_show_hidden=1

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
nmap <F3> :set list!<CR>
nmap <F4> :call ToggleError()<CR>
nmap <F8> :TagbarToggle<CR>

nmap <Up> gk
nmap <Down> gj
nmap <C-l> gt
nmap <C-h> gT
imap <Up> <C-O>gk
imap <Down> <C-O>gj
imap <C-e> <C-O><C-e>
imap <C-y> <C-O><C-y>
vmap <Up> gk
vmap <Down> gj

set number
set t_Co=256
set hlsearch
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set cursorline
set colorcolumn=80
set backspace=indent,eol,start

autocmd FileType * set formatoptions-=c formatoptions-=r formatoptions-=o
autocmd BufWritePre * :%s/\s\+$//e
autocmd CursorMovedI,CursorMoved * GitGutterEnable
