call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'rebelot/kanagawa.nvim'

Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'jiangmiao/auto-pairs'
Plug 'matze/vim-move'

Plug 'hashivim/vim-terraform'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-file-browser.nvim'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'ThePrimeagen/harpoon'

Plug 'sbdchd/neoformat'
Plug 'voldikss/vim-floaterm'
Plug 'lukas-reineke/indent-blankline.nvim'
"Plug 'christoomey/vim-tmux-navigator'
"Plug 'airblad/vim-gitgutter'
"Plug 'comment.nvim' https://www.youtube.com/watch?v=-InmtHhk2qM
"Plug 'lewis6991/gitsigns.nvim'
"Plug 'takac/vim-hardtime'

call plug#end()


