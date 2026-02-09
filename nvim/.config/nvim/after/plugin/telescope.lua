local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', function()
    local ok = pcall(builtin.git_files)
    if not ok then
        vim.notify("Not inside a git repo! Falling back to find_files()", vim.log.levels.INFO)
        builtin.find_files()
    end
end, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

