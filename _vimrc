set nocompatible
set hidden
set history=100
set showmatch      " show matching params
set number         " show line numbers
set relativenumber " relative line numbers
set incsearch      " incremetal search
set hlsearch       " higlight search and allow to cancel it with Esc
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" Indenting - and no tabs
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" Remove trailing whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Remap leader to space and add <Leader>s for reloading config
let mapleader=" "
map <leader>s :source ~/.vimrc<CR>


" Vundle begin
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-ctrlspace/vim-ctrlspace'
Plugin 'easymotion/vim-easymotion'

call vundle#end()            " required
filetype plugin indent on    " required
" Vundle end

" Colors
let g:airline_powerline_fonts = 1
set background=dark
colorscheme solarized
set laststatus=2
set colorcolumn=90
syn on

