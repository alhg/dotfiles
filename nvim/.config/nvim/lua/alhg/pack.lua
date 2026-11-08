vim.api.nvim_create_autocmd('PackChanged', {
    callback = function(ev)
        if ev.data.spec.name == 'nvim-treesitter' and ev.data.kind == 'update' then
            if not ev.data.active then
                vim.cmd.packadd('nvim-treesitter')
            end
            vim.cmd('TSUpdate')
        end
    end,
})

vim.pack.add({
    { src = 'https://github.com/nvim-telescope/telescope.nvim' },
    { src = 'https://github.com/nvim-lua/plenary.nvim' },
    { src = 'https://github.com/miikanissi/modus-themes.nvim' },
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'master' },
    { src = 'https://github.com/theprimeagen/harpoon' },
    { src = 'https://github.com/tpope/vim-fugitive' },
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = 'https://github.com/mason-org/mason.nvim' },
    { src = 'https://github.com/mangelozzi/nvim-rgflow.lua' },
})

