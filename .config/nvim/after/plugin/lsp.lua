-- local coq = require('coq')
local Remap = require('alhg.keymap')
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap

-- Setup nvim-cmp
local cmp = require('cmp')
local source_mapping = {
    buffer = '[Buffer]',
    nvim_lsp = '[LSP]',
    nvim_lua = '[Lua]',
    path = '[PATH]'
}
local lspkind = require('lspkind')
cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete()
    }),
    formatting = {
        format = function(entry, vim_item)
            vim_item.kind = lspkind.presets.default[vim_item.kind]
            local menu = source_mapping[entry.source.name]
            vim_item.menu = menu
            return vim_item
        end
    },
    sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
    }
})

local function config(_config)
    return vim.tbl_deep_extend("force", {
        capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
        on_attach = function()
            nnoremap("gd", function() vim.lsp.buf.definition() end, {
                desc = "LSP jump to definition"
            })
            nnoremap("gD", function() vim.lsp.buf.declaration() end, {
                desc = "LSP jump to declaration"
            })
            nnoremap("<leader>gi", function() vim.lsp.buf.implementation() end, {
                desc = "LSP jump to implementation"
            })
            nnoremap("K", function() vim.lsp.buf.hover() end, {
                desc = "LSP display hover information"
            })
            nnoremap("<leader>vws", function() vim.lsp.buf.workspace_symbol() end, {
                desc = "LSP display workspace symbol"
            })
            nnoremap("<leader>vd", function() vim.diagnostic.open_float() end, {
                desc = "Open diagnostics menu"
            })
            nnoremap("[d", function() vim.diagnostic.goto_next() end, {
                desc = "Go to next diagnostic error"
            })
            nnoremap("]d", function() vim.diagnostic.goto_prev() end, {
                desc = "Go to prev diagnostic error"
            })
            nnoremap("<leader>vca", function() vim.lsp.buf.code_action() end, {
                desc = "LSP code action"
            })
            nnoremap("<leader>vco", function() vim.lsp.buf.code_action({
                filter = function(code_action)
                    if not code_action or not code_action.data then
                        return false
                    end
                    local data = code_action.data.id
                    return string.sub(data, #data - 1, #data) == ":0"
                end,
                apply = true
            }) end, {
                desc = "LSP code action filter????"
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
        end,
    }, _config or {})
end

require('lspconfig').clangd.setup(config())

require('lspconfig').gopls.setup(config())

require('lspconfig').ocamllsp.setup(config())

require('lspconfig').rust_analyzer.setup(config())

-- Web Development
require('lspconfig').angularls.setup(config())
require('lspconfig').eslint.setup(({}))
require('lspconfig').tsserver.setup(config())
