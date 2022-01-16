-- TSInstall <language> Supports tab completion
-- go vim lua json yaml dockerfile
require'nvim-treesitter.configs'.setup { 
    ensure_installed = {
        'go',
        'gomod',
        'vim',
        'lua',
        'json',
        'yaml',
        'dockerfile',
        'javascript',
        'python',
        'tsx',
        'typescript',
    },
    highlight = { 
        enable = true 
    }, 
    incremental_selection = {
        enable = true 
    },
    indent = {
        enable = true,
        disable = {"yaml"}
    },
    textobjects = {
        enable = true 
    }
}

