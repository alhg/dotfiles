require('modus-themes').setup({
  on_colors = function(colors)
    colors.comment = colors.green
  end
})

vim.cmd([[colorscheme modus_vivendi]])
