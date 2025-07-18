vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use('wbthomason/packer.nvim')

    use({
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    })

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use({'theprimeagen/harpoon'})
    use({'tpope/vim-fugitive'})

    use({'neovim/nvim-lspconfig'})
    use({
        'williamboman/mason.nvim',
        config = function() require('mason').setup() end
    })

    use({'mangelozzi/nvim-rgflow.lua'})
end)

