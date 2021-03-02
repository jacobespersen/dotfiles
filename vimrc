" Of course
set nocompatible

" Required Vundle setup
filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Bundle 'VundleVim/Vundle.vim'
Bundle 'rking/ag.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'wincent/command-t'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'python-mode/python-mode'
Bundle 'vim-syntastic/syntastic'
Bundle 'vim-airline/vim-airline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'tpope/vim-surround'
Bundle 'maralla/completor.vim'

call vundle#end()

" Pathogen
silent! execute pathogen#infect()
silent! call pathogen#helptags()

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
""let g:solarized_termcolors=256
"colorscheme solarized
au BufNewFile,BufRead *.ejs set filetype=html

"" font
set guifont=*

"" The silver searcher config
let g:ag_prg="/usr/local/Cellar/the_silver_searcher/2.1.0/bin/ag --vimgrep"
let g:ag_working_path_mode="r"

"" Mappings and shortcuts
inoremap kl <ESC>
let mapleader = "\<Space>"

nnoremap <leader>f 1z=
noremap <leader>o <Esc>:CommandT<CR>
noremap <leader>O <Esc>:CommandTFlush<CR>
noremap <leader>m <Esc>:CommandTBuffer<CR>
map <C-n> :NERDTreeToggle<CR>
inoremap <C-s> <esc>:w<cr>
nnoremap <C-s> :w<cr>
nnoremap <C-q> :q<Cr>

 ""Navigation
nnoremap j h
nnoremap k j
nnoremap l k
nnoremap ; l
vnoremap j h
vnoremap k j
vnoremap l k
vnoremap ; l
nnoremap <C-j> <C-W><C-H>
nnoremap <C-k> <C-W><C-J>
nnoremap <C-l> <C-W><C-K>
nnoremap <C-\> <C-W><C-L>

"" Copy-paste clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

"""" Automatically jump to end of pasted text
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]`

" Disable mouse
set mouse=""
:nmap <ScrollWheelUp> <nop>
:nmap <S-ScrollWheelUp> <nop>
:nmap <C-ScrollWheelUp> <nop>
:nmap <ScrollWheelDown> <nop>
:nmap <S-ScrollWheelDown> <nop>
:nmap <C-ScrollWheelDown> <nop>
:nmap <ScrollWheelLeft> <nop>
:nmap <S-ScrollWheelLeft> <nop>
:nmap <C-ScrollWheelLeft> <nop>
:nmap <ScrollWheelRight> <nop>
:nmap <S-ScrollWheelRight> <nop>
:nmap <C-ScrollWheelRight> <nop>

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
let g:syntastic_mode_map = {'mode': 'passive'}

"" Autocomplete
"let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_server_python_interpreter='/usr/local/bin/python3'

"" Hide GUI toolbar etc
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

"" HTML autocompletion
:set omnifunc=htmlcomplete#CompleteTags
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

"" Copy-pasting
vmap <C-c> :<Esc>`>a<CR><Esc>mx`<i<CR><Esc>my'xk$v'y!xclip -selection c<CR>u
map <Insert> :set paste<CR>i<CR><CR><Esc>k:.!xclip -o<CR>JxkJx:set nopaste<CR>
"let g:pymode_lint_write = 0       "turn off running pylint on file save

" Python Mode
"let g:pymode_lint_write = 0       "turn off running pylint on file save
"nnoremap <leader>p :PymodeLint<cr>    "pressing ,p will run plyint on current buffer

" Do not create swap files
set noswapfile

" Set tab to complete Autocomplete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
