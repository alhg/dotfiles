local Remap = require("alhg.keymap")
local nnoremap = Remap.nnoremap

-- Telescope shortcuts <C-p> or <leader>p<key>
nnoremap("<C-p>", ":Telescope")
nnoremap("<leader>ps", function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep for > ") })
end, { desc = 'Telescope grep string' })
nnoremap("<C-p>", function()
    require('telescope.builtin').git_files()
end, { desc = 'Telescope git files' })
nnoremap("<leader>pf", function()
    require('telescope.builtin').find_files()
end, { desc = 'Telescope find files' })
nnoremap("<leader>pw", function()
    require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }
end, { desc = 'Telescope grep string <cword>' })
nnoremap("<leader>pb", function()
    require('telescope.builtin').buffers()
end, { desc = 'Telescope buffers' })
nnoremap("<leader>ph", function()
    require('telescope.builtin').help_tags()
end, { desc = 'Telescope help tags' })

-- Telescope git Shortcuts '<leader>g<key>'
nnoremap("<leader>gb", function()
    require('telescope.builtin').git_branches()
end, { desc = 'Telescope git branches' })
nnoremap("<leader>gw", function()
    require('telescope').extensions.git_worktree.git_worktrees()
end, { desc = 'Telescope git worktrees' })

