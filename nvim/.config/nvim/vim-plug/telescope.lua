local telescope = require('telescope')
telescope.setup {
    defaults = {
        file_ignore_patterns = {".git"}
    },
    pickers = {
        find_files = {
            hidden = true
        }
    }    
}

require("telescope").load_extension "file_browser"
