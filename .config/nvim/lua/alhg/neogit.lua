local neogit = require('neogit')
local nnoremap = require('alhg.keymap').nnoremap

neogit.setup {}

nnoremap("<leader>gs", function()
    neogit.open({})
end);

