set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'Solarized'
Plugin 'Tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'msanders/snipmate.vim'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'Syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Theme
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Airline
set laststatus=2
let g:airline_theme='badwolf'
let g:airline_powerline_fonts=1

" Syntastic
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

set nu
set t_Co=256
set hlsearch
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set cursorline
set list
set listchars=eol:$,tab:>-,trail:~
set colorcolumn=80

autocmd FileType * set formatoptions-=c formatoptions-=r formatoptions-=o
autocmd BufWritePre * :%s/\s\+$//e
autocmd CursorMovedI,CursorMoved * GitGutterEnable
