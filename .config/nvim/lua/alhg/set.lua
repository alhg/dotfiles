-- relavtive numbers promote <number><hjkl> usage
vim.opt.number = true
vim.opt.relativenumber = true

-- turn off annoyance
vim.opt.errorbells = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.termguicolors = true

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

-- Decrease update time from the default of 4sec
vim.opt.updatetime = 50

-- Add line column. format: "80,100,120"
vim.opt.colorcolumn = "80,100"

vim.g.mapleader = " "
