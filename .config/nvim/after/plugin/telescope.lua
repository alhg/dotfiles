require("telescope").setup({
    defaults = {
        file_sorter = require("telescope.sorters").get_fzy_sorter,
        prompt_prefix = " >",
        color_devicons = true,
        path_display = {"smart"}
    }
})

require("telescope").load_extension("git_worktree")

