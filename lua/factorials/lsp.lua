lspconfig = require('lspconfig')
require("mason").setup()

vim.opt.signcolumn = 'no'
vim.diagnostic.disable()
diagnostics_enabled = false


local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)

    vim.keymap.set('n', '<tab>', function() 
        if diagnostics_enabled then
            vim.diagnostic.disable()
            vim.opt.signcolumn = 'no'
            diagnostics_enabled = false
        else
            vim.diagnostic.enable()
            vim.diagnostic.show()
            vim.opt.signcolumn = 'yes'
            diagnostics_enabled = true
        end
    end, bufopts)
end

--vim.diagnostic.config({
--    virtual_text = false,
--})


local lsp_flags = {
  debounce_text_changes = 150,
  --update_in_insert = false,
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

