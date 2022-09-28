vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()
    use 'wbthomason/packer.nvim'
    use 'sbdchd/neoformat'
    use {
        'folke/which-key.nvim',
        config = function()
            require("which-key").setup({})
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

    -- code syntax & language servers
    use 'neovim/nvim-lspconfig' -- premade lsp configs to use with built-in lsp
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/nvim-cmp'
    use 'onsails/lspkind.nvim' -- shows vscode symbols in cmp
    use 'glepnir/lspsaga.nvim' -- what does this add to lsp??
    -- snippit engine, required for nvim-cmp
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    -- use {
    --    'ms-jpq/coq_nvim',
    --    branch = 'coq',
    --    requires = {
    --        { 'ms-jpq/coq.artifacts', branch = 'artifacts' }
    --    }
    -- }
    -- use {
    --    'nvim-treesitter/nvim-treesitter',
    --    { run = ":TSUpdate" }
    -- }

    use 'mbbill/undotree'
end)

