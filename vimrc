set hidden
set showcmd
set autochdir

"For efficient #+movement
set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

"Colors
colorscheme vividchalk

"Plugins
execute pathogen#infect()

"Fonts
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

"Configure NERDTree
let NERDTreeShowBookmark=1

"Load NERDTree on startup
autocmd VimEnter * NERDTree
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

