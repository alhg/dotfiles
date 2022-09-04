vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()
    use 'wbthomason/packer.nvim'

    -- color schemes
    use 'folke/tokyonight.nvim'

    use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = 'nvim-lua/plenary.nvim' }
    use 'ThePrimeagen/git-worktree.nvim'
    use 'ThePrimeagen/harpoon'

    use 'neovim/nvim-lspconfig'
end)

