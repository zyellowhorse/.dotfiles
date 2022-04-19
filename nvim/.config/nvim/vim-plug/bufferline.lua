vim.opt.termguicolors = true

require("bufferline").setup {
    options = {
        numbers = "none",
        diagnostics = "nvim_lsp",
        diagnostic_update_in_inster = true,
        diagnosticsindicator = function(count, level, diagnostics_dict, context)
          local s = " "
          for e, n in pairs(diagnostics_dict) do
            local sym = e == "error" and " "
              or (e == "warning" and " " or "" )
            s = s .. n .. sym
          end
          return s
        end,
        show_tab_indicators = false,
        show_buffer_close_icons = true,
        enforce_regular_tabs = false,
    },
    highlights = {
        buffer_selected = {
            gui = "bold",
        },
        indicator_selected = {
            guifg = "#d2a8ff",
            guibg = "#d2a8ff",
        },
    },
}
