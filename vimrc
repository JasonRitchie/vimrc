syntax enable

set showcmd
set showmode

set backspace=indent,eol,start

set hidden

set wildmenu
set wildmode=list:longest

set ignorecase
set smartcase

set relativenumber
set ruler
set autochdir
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
colorscheme vividchalk
execute pathogen#infect()
syntax on
filetype plugin indent on
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
  set lines=100 columns=150
endif
autocmd VimEnter * NERDTree
let NERDTreeShowBookmarks=1
