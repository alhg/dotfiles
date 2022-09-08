vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()
    use 'wbthomason/packer.nvim'
    use 'sbdchd/neoformat'
    use {
        'folke/which-key.nvim',
        config = function()
            require("which-key").setup {}
        end
    }

    -- color schemes
    use 'folke/tokyonight.nvim'
    use 'gruvbox-community/gruvbox'

    use 'nvim-lua/plenary.nvim'
    use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = 'nvim-lua/plenary.nvim' }
    use 'ThePrimeagen/git-worktree.nvim'
    use 'ThePrimeagen/harpoon'

    use 'neovim/nvim-lspconfig'
    use {
        'ms-jpq/coq_nvim',
        branch = 'coq',
        requires = {
            { 'ms-jpq/coq.artifacts', branch = 'artifacts' }
        }
    }

    use 'mbbill/undotree'
end)

