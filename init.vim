call plug#begin()

" colorschemes
Plug 'morhetz/gruvbox'
Plug 'ap/vim-css-color'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fileexplorer
Plug 'scrooloose/nerdtree'

" C++
Plug 'valloric/youcompleteme'

call plug#end()


""" General
" Enable Mouse
set mouse=a

" Terminal shortcut
nnoremap + :term <CR>

" Linenumbers
set number
set relativenumber

" tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" scrolloff so the cursor never reaches the top or bottom
set scrolloff=8

" additional
set nohlsearch
set nowrap
set incsearch

""" colorschemes
set background=dark
colorscheme gruvbox


""" airline
let g:airline_powerline_fonts = 1


""" Fileexplorer
" Autostart NERDTree
autocmd vimenter * NERDTree " start
autocmd VimEnter * wincmd p " change back to main window
" autoclose NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" shortcut for toggleing NERDTree (CTRL + i)
nnoremap <C-i> :NERDTreeToggle<CR>


""" C++
" autoclose YCM insertion-window
let g:ycm_autoclose_preview_window_after_insertion = 1
