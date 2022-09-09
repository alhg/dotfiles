local coq = require('coq')
local Remap = require('alhg.keymap')
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap

local on_attach = function()
    nnoremap("gd", function() vim.lsp.buf.definition() end, {
        desc = "LSP jump to definition"
    })
    nnoremap("K", function() vim.lsp.buf.hover() end, {
        desc = "LSP display hover information"
    })
    nnoremap("<leader>vws", function() vim.lsp.buf.workspace_symbol() end, {
        desc = "LSP display workspace symbol"
    })
    nnoremap("<leader>vd", function() vim.diagnostic.open_float() end)
    nnoremap("[d", function() vim.diagnostic.goto_next() end, {
        desc = "Go to next diagnostic error"
    })
    nnoremap("]d", function() vim.diagnostic.goto_prev() end, {
        desc = "Go to prev diagnostic error"
    })
    nnoremap("<leader>vrr", function() vim.lsp.buf.references() end, {
        desc = "LSP find references"
    })
    nnoremap("<leader>vrn", function() vim.lsp.buf.rename() end, {
       desc = "LSP rename" 
    })
    inoremap("<C-h>", function() vim.lsp.buf.signature_help() end, {
        desc = "LSP show signature help tooltip"
    })
end

require('lspconfig').clangd.setup(coq.lsp_ensure_capabilities{
    on_attach = on_attach
})

require('lspconfig').gopls.setup(coq.lsp_ensure_capabilities({
    on_attach = on_attach
}))

require('lspconfig').rust_analyzer.setup(coq.lsp_ensure_capabilities({
    on_attach = on_attach
}))

-- Web Development
require('lspconfig').eslint.setup(coq.lsp_ensure_capabilities({}))
require('lspconfig').tsserver.setup(coq.lsp_ensure_capabilities({
    on_attach = on_attach
}))

