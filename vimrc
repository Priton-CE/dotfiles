call plug#begin('~/.vim/plugged')

Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'

call plug#end()

""" YCM
" autoclose insertion-window
let g:ycm_autoclose_preview_window_after_insertion = 1



""" NERDTree
" Autostart NERDTree
autocmd vimenter * NERDTree " start
autocmd VimEnter * wincmd p " change back to main window
" autoclose NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" CTRL + i shortcut for toggleing NERDTree
nnoremap <C-i> :NERDTreeToggle<CR>



""" General
" Enable Mouse
set mouse=a
" Terminal shortcut
map + :term <CR>
" Linenumbers
set number
set relativenumber
set tabstop=5
