-- TSInstall <language> Supports tab completion
-- go vim lua json yaml dockerfile
require 'nvim-treesitter.configs'.setup {
    ensure_installed = {
        'go',
        'gomod',
        'vim',
        'lua',
        'json',
        'yaml',
        'dockerfile',
        'markdown',
        'javascript',
        'python',
        'tsx',
        'typescript',
        'hcl',
    },
    highlight = {
        enable = true
    },
    incremental_selection = {
        enable = true
    },
    indent = {
        enable = true,
        disable = { "yaml", "python" }
    },
    textobjects = {
        enable = true
    }
}
