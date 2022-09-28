local Remap = require("alhg.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

nnoremap("<leader>pv", "<cmd>Ex<CR>", { desc = "Open netrw in current directory" })
nnoremap("<C-d>", "<C-d>zz", { desc = "Move a half screen down and center" })
nnoremap("<C-u>", "<C-u>zz", { desc = "Move a half screen up and center" })

vnoremap("J", ":m '>+1<CR>gv=gv", { desc = "Move line(s) down"})
vnoremap("K", ":m '<-2<CR>gv=gv", { desc = "Move line(s) up"})

xnoremap("<leader>p", "\"_dP")

nnoremap("<leader>f", function() vim.lsp.buf.format() end, {
    desc = "LSP format current buffer"
})

nnoremap("<C-c>", "<Esc>", { desc = "<Esc>" })

-- prevent of using emacs habit
nnoremap("<C-n>", "<Nop>", { desc = "<Nop>" })

-- not useful, coud remap to other commands
nnoremap("<C-f>", "<C-f>zz", { desc = "Move a full screen forward (down) and center" })
nnoremap("<C-b>", "<C-b>zz", { desc = "Move a full screen backward (up) and center" })
