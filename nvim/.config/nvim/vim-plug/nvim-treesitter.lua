-- TSInstall <language> Supports tab completion
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
        'json5',
        'make',
        'todotxt',
        'css',
        'html',
        'bash',
        'astro',
        'comment',
    },
    highlight = {
        enable = true
    },
    incremental_selection = {
        enable = true
    },
    indent = {
        enable = true,
        disable = { "html" }
    },
    textobjects = {
        enable = true
    }
}
