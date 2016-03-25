




"Colors
set background=dark
colorscheme solarized


"Fonts
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=InputMono\ ExLight:h12
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
  :set guioptions-=m  "remove menu bar
  :set guioptions-=T  "remove toolbar
  :set guioptions-=r  "remove right-hand scroll bar
  :set guioptions-=L  "remove left-hand scroll bar
  set lines=1000 columns=150
endif
"
let g:airline_powerline_fonts=1

"Since q lets you exit NERDTree, let's do this to get back
:nnoremap <leader>q :NERDTree<cr>

"Load NERDTree on startup
autocmd VimEnter * NERDTree

"Quick shortcuts for editing vimrc
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType json setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd FileType sql setlocal shiftwidth=2 tabstop=2

"For efficient #+movement
set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
