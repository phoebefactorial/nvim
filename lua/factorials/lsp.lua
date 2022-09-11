lspconfig = require('lspconfig')
require("mason").setup()

local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
end

local lsp_flags = {
  debounce_text_changes = 150,
}

-- TODO configure with https://github.com/tailwindlabs/tailwindcss-intellisense
lspconfig.tailwindcss.setup({
    on_attach = on_attach,
    flags = lsp_flags,
})

-- TODO configure with https://github.com/python-lsp/python-lsp-server/blob/develop/CONFIGURATION.md
lspconfig.pylsp.setup({
    on_attach = on_attach,
    flags = lsp_flags,
    pylsp = {
    }
})

