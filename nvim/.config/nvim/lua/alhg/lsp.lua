vim.lsp.enable('lua_ls')
vim.lsp.enable('clangd')
vim.lsp.enable('rust-analyzer')

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client and client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})

-- Add the following options to completeopt to make it usable:
--   - noselect :: Very annoying that autocomplete always selects, turn it off
--   - fuzzy    :: I misspell all the time, also I use autocomplete to search methods quickly
vim.cmd("set completeopt+=noselect,fuzzy")
