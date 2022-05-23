call plug#begin('~/.config/nvim/autoload/plugged')
"Plug 'dstein64/vim-startuptime'
Plug 'rebelot/kanagawa.nvim'

Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'jiangmiao/auto-pairs'
Plug 'matze/vim-move'

Plug 'hashivim/vim-terraform'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-file-browser.nvim'

Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind.nvim'

Plug 'ThePrimeagen/harpoon'

Plug 'sbdchd/neoformat'
Plug 'voldikss/vim-floaterm'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'tpope/vim-surround'
Plug 'numToStr/Comment.nvim'
Plug 'vladdoster/remember.nvim'
"Plug 'christoomey/vim-tmux-navigator'
"Plug 'airblad/vim-gitgutter'
"Plug 'comment.nvim' https://www.youtube.com/watch?v=-InmtHhk2qM
"Plug 'lewis6991/gitsigns.nvim'
"Plug 'takac/vim-hardtime'

call plug#end()

