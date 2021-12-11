let mapleader = " "


source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/vim-plug/hotkeys.vim
source $HOME/.config/nvim/vim-plug/airline.vim
source $HOME/.config/nvim/vim-plug/telescope.lua
source $HOME/.config/nvim/vim-plug/telescope.vim
source $HOME/.config/nvim/vim-plug/harpoon.vim
source $HOME/.config/nvim/vim-plug/vim-coc.vim
source $HOME/.config/nvim/vim-plug/nvim-treesitter.lua


colorscheme onedark

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browser_split = 3


" Use :h {command} to read what a command does. :h noshowmode
syntax enable
set encoding=utf-8
set noerrorbells
set splitright
set t_Co=256
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smarttab
set autoindent
set relativenumber
set nu
set hidden
set nowrap
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set scrolloff=8
set noshowmode
set showmatch matchtime=3
set completeopt=menuone,preview
set signcolumn=yes
set nocompatible
set mouse=a

augroup Mkdr
  autocmd!
  autocmd BufWritePre * call mkdir(expand("<afile>:p:h"), "p")
augroup END

" :Call EmptyRegisters()
fun! EmptyRegisters()
    let regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')
    for r in regs
        call setreg(r, [])
    endfor
endfun

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
