function! s:InstallVimPlug()
    if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif
endfunction


call s:InstallVimPlug()


set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME
set nocompatible
filetype off

call plug#begin()
Plug 'davidhalter/jedi-vim'
Plug 'lambdalisue/vim-pyenv'
Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-gitgutter'
Plug 'psf/black', { 'branch': 'stable' }
Plug 'jmcantrell/vim-virtualenv'
Plug 'flazz/vim-colorschemes'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/sonokai'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'leshill/vim-json'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-markdown'
Plug 'groenewege/vim-less'
Plug 'kchmck/vim-coffee-script'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-utils/vim-man'
Plug 'Valloric/YouCompleteMe'

call plug#end()

set guifont=Monaco:h12

filetype plugin indent on
syntax on
set splitbelow
set splitright

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

set nu

set shiftround
set autoindent
set smartindent
set noerrorbells
set vb t_vb=

set nobackup
set nowritebackup
set noswapfile

set undodir=~/.vim/undodir
set undofile

set hidden
set autoread

set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set gdefault

set virtualedit+=block
set colorcolumn=80
let mapleader=","

" Bind : to ; so you dont need to press shift
nnoremap ; :
vnoremap ; :

inoremap jf <esc>

" Remap split window commands
noremap <leader>v <C-w>v

nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

nnoremap / /\v
vnoremap / /\v
noremap <leader><space> :noh<cr>:call clearmatches()<cr>
nnoremap <leader><leader> <c-^>
noremap j gj
noremap k gk 

nnoremap <C-S-tab> :bprevious<CR>
nnoremap <C-tab>   :bnext<CR>

autocmd BufWritePre *.py execute ':Black'

nnoremap <leader>c <Plug>CommentaryLine
let g:ctrlp_map = '<c-t>'
let g:ctrlp_max_height = 30

set background=dark
let g:gruvbox_material_background = 'hard'
let g:airline_theme = 'gruvbox_material'
 let g:airline#extensions#tabline#enabled = 1

if has('termguicolors')
    set termguicolors
    endif
