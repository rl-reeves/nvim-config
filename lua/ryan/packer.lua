-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'ryanoasis/vim-devicons'
    use { "catppuccin/nvim", as = "catppuccin" }
    use 'shaunsingh/nord.nvim'
    use 'olivercederborg/poimandres.nvim'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'akinsho/bufferline.nvim', tag = "v3.*",
        requires = 'nvim-tree/nvim-web-devicons'
    }
    use 'tpope/vim-fugitive'
    use {
        'lewis6991/gitsigns.nvim',
        -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    }
    use {
        "lukas-reineke/indent-blankline.nvim", config = function()
        require("indent_blankline").setup {
            filetype_exclude = { "dashboard" }
        }
        end
    }
    use 'glepnir/dashboard-nvim'
    use 'norcalli/nvim-colorizer.lua'
    use 'windwp/nvim-autopairs'
end)
