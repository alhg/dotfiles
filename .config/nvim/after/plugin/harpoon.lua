require("harpoon").setup({
    menu = {
        -- default 60, but too small
        width = math.max(vim.api.nvim_win_get_width(0) - 16, 60)
    }
})
