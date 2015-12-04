" Pathogen
execute pathogen#infect()
call pathogen#helptags()
  
" Basic settings
syntax on
filetype plugin indent on
set spell spelllang=en_us
set sw=2
set smarttab
set number
set relativenumber
set numberwidth=4
    
" Mappings and shortcuts
inoremap jk <ESC>
let mapleader = "\<Space>"

nnoremap <leader>f 1z=
