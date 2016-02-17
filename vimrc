" Pathogen
execute pathogen#infect()
"call pathogen#helptags()

" Basic settings
syntax enable
filetype plugin indent on
set runtimepath^=~/.vim/bundle/ctrlp.vim
set spell spelllang=en_us
set sw=2
set background=dark
set number
set relativenumber
set laststatus=2
set modifiable

" Indents
set tabstop=2
set shiftwidth=2
set expandtab

" Color scheme
"let g:solarized_termcolors=256
colorscheme solarized
au BufNewFile,BufRead *.ejs set filetype=html
    
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

" Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open split to the right and bottom
set splitbelow
set splitright

" NERDtree settings
" Close NERDtree when last file is closed
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1

" CtrlP
let g:ctrlp_show_hidden = 1

" syntax check
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Syntastic configuration
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Autocomplete
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" Hide GUI toolbar etc
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

" HTML autocompletion
:set omnifunc=htmlcomplete#CompleteTags
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" Copy-pasting
vmap <C-c> :<Esc>`>a<CR><Esc>mx`<i<CR><Esc>my'xk$v'y!xclip -selection c<CR>u
map <Insert> :set paste<CR>i<CR><CR><Esc>k:.!xclip -o<CR>JxkJx:set nopaste<CR>
