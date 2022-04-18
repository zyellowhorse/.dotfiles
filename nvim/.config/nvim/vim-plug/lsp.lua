local nvim_lsp = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local on_attach = function()
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
    vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, {buffer=0})
    vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, {buffer=0})
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer=0})
end

local servers = {'gopls', 'terraformls', 'yamlls', 'pyright'}
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        capabilities = capabilities,
        on_attach = on_attach,
    }
end

vim.opt.completeopt={"menu", "menuone", "noselect"}

-- Setup nvim-cmp.
local cmp = require'cmp'
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  })
})

--local util = require('lspconfig/util')
--nvim_lsp.gopls.setup {
--  cmd = {"gopls", "serve"},
--  filetypes = {"go", "gomod"},
--  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
--  settings = {
--    gopls = {
--      analyses = {
--        unusedparams = true,
--      },
--      staticcheck = true,
--    },
--  },
--}
--
--function OrgImports(wait_ms)
--  local params = vim.lsp.util.make_range_params()
--  params.context = {only = {"source.organizeImports"}}
--  local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, wait_ms)
--  for _, res in pairs(result or {}) do
--    for _, r in pairs(res.result or {}) do
--      if r.edit then
--        vim.lsp.util.apply_workspace_edit(r.edit, "UTF-8")
--      else
--        vim.lsp.buf.execute_command(r.command)
--      end
--    end
--  end
--end
