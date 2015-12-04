" Pathogen
execute pathogen#infect()
call pathogen#helptags()

" Basic settings
syntax enable
filetype plugin indent on
set runtimepath^=~/.vim/bundle/ctrlp.vim
set spell spelllang=en_us
set sw=2
set smarttab
set background=dark
set number
set relativenumber
set numberwidth=4
set laststatus=2
colorscheme solarized
    
" Mappings and shortcuts
inoremap jk <ESC>
let mapleader = "\<Space>"

nnoremap <leader>f 1z=
noremap <leader>o <Esc>:CommandT<CR>
noremap <leader>O <Esc>:CommandTFlush<CR>
noremap <leader>m <Esc>:CommandTBuffer<CR>
map <C-n> :NERDTreeToggle<CR>
inoremap <C-s> <esc>:w<cr>
nnoremap <C-s> :w<cr>

" Close NERDtree when last file is closed
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" syntax check
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Autocomplete
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
