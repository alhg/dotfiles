local Remap = require("alhg.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

nnoremap("<leader>pv", "<cmd>Ex<CR>", { desc = "Open netrw in current directory" })
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

vnoremap("J", ":m '>+1<CR>gv=gv", { desc = "Move line(s) down"})
vnoremap("K", ":m '<-2<CR>gv=gv", { desc = "Move line(s) up"})

xnoremap("<leader>p", "\"_dP")

nnoremap("<leader>f", function()
    vim.lsp.buf.format()
end, { desc = "LSP format current buffer" })

