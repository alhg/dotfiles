local nnoremap = require("alhg.keymap").nnoremap

nnoremap("<leader>a", function() require("harpoon.mark").add_file() end, {
    desc = "Harpoon add file to edit list",
    silent = true
})
nnoremap("<C-e>", function() require("harpoon.ui").toggle_quick_menu() end, {
    desc = "Harpoon toggle quick menu",
    silent = true
})

-- place harpoon nav shortcuts on right hand home row (qwerty) for speed
nnoremap("<C-j>", function() require("harpoon.ui").nav_file(1) end, {
    desc = "Harpoon jump to 1st file in edit list",
    silent = true
})
nnoremap("<C-k>", function() require("harpoon.ui").nav_file(2) end, {
    desc = "Harpoon jump to 2nd file in edit list",
    silent = true
})
nnoremap("<C-l>", function() require("harpoon.ui").nav_file(3) end, {
    desc = "Harpoon jump to 3rd file in edit list",
    silent = true
})
nnoremap("<C-;>", function() require("harpoon.ui").nav_file(4) end, {
    desc = "Harpoon jump to 4th file in edit list",
    silent = true
})
