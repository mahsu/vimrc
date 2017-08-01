set history=500                 " number of lines to remember
set autoread                    " reload file on external change
let mapleader=","
set backupdir=~/.vim/backup
set directory=~/.vim/swap       " keep swap files in centralized location

" filetype detection
filetype plugin on
filetype indent on

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set backspace=indent,eol,start  " make backspace work normally
set lbr
set tw=500                      " linebreak on 500 characters

set ai                          " auto indent
set si                          " smart indent
set wrap                        " wrap lines

" Command line autocompletion
set wildmenu
set wildmode=longest:full,full  " tab to cycle autocomplete

" Move by line instead of row
map j gj
map k gk
set whichwrap+=<,>,h,l,[,]      " navigation keys wrap lines
set so=10                       " scroll offset

" visual stuff
set nu                          " line numbers
set ruler                       " show current position
set foldcolumn=1                " extra margin on left
set laststatus=2                " always show status line
set showmode                    " always display mode
set cmdheight=2                 " more room for commands

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

" Make splits more intuitive
set splitbelow
set splitright

" Mappings
"map! jk <Esc>
imap ljk <ESC>
map <leader>w :w

" Commands
command W w
command Q q
command Vs vsplit
command Te tabedit

" Pathogen plugin management
source ~/vimrc/plugins/vim-pathogen/autoload/pathogen.vim
call pathogen#infect('~/vimrc/plugins/{}', '~/vimrc/syntax/{}', '~/vimrc/colors/{}')
call pathogen#helptags()

syntax enable
set background=dark
colorscheme molokai

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_rust_checkers   = ['rustc']
let g:syntastic_go_checkers     = ['go']

