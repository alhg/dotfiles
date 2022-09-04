local Remap = require('alhg.keymap')
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap

local on_attach = function()
    nnoremap("gd", function() vim.lsp.buf.definition() end)
    nnoremap("K", function() vim.lsp.buf.hover() end)
    nnoremap("<leader>vws", function() vim.lsp.buf.workspace_symbol() end)
    nnoremap("<leader>vd", function() vim.diagnostic.open_float() end)
    nnoremap("[d", function() vim.diagnostic.goto_next() end)
    nnoremap("]d", function() vim.diagnostic.goto_prev() end)
    nnoremap("<leader>vrr", function() vim.lsp.buf.references() end)
    nnoremap("<leader>vrn", function() vim.lsp.buf.rename() end)
    inoremap("<C-h>", function() vim.lsp.buf.signature_help() end)
end

require('lspconfig')['tsserver'].setup{
    on_attach = on_attach
}
