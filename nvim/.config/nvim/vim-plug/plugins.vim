call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'matze/vim-move'

Plug 'hashivim/vim-terraform'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'ThePrimeagen/harpoon'

Plug 'sbdchd/neoformat'
Plug 'voldikss/vim-floaterm'
"Plug 'christoomey/vim-tmux-navigator'
"Plug 'airblad/vim-gitgutter'
"Plug 'comment.nvim' https://www.youtube.com/watch?v=-InmtHhk2qM

call plug#end()


