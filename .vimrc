set history=500                 " number of lines to remember
let autoread                    " reload file on external change
let mapleader=","

" filetype detection
filetype plugin on
filetype indent on

set expandtab
set smartab
set shiftwidth=4
set tabstop=4
set backspace=indent,eol,start  " make backspace work normally
set lbr
set tw=500                      " linebreak on 500 characters

set ai                          " auto indent
set si                          " smart indent
set wrap                        " wrap lines

" treat long lines as break lines
map j gj 
map k gk
set so=7                        " scroll offset

set nu                          " line numbers
set ruler                       " show current position
set foldcolumn=1                " extra margin on left
set laststatus=2                " always show status line

" searching
set ignorecase
set smartcase
set hlsearch                    " highlight results
set incsearch                   " show next match when entering a search 
set magic                       " regexp
set showmatch                   " show matching brackets

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

syntax enable

" Mappings
"map! jk <Esc>
imap ljk <ESC>
map <leader>w :w

" Commands
command W w
command Q q
command vs vsplit
command te tabedit

" Pathogen plugin management
source ~/.vimrc/plugins/vim-pathogen/autoload/pathogen.vim
call pathogen#infect('~/.vimrc/plugins/{}')
call pathogen#helptags()
