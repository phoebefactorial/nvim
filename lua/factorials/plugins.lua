return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim'

    use 'preservim/vim-markdown'
    use 'folke/lsp-colors.nvim'

    use 'dracula/vim'
    use 'morhetz/gruvbox'
    use {
        "mcchrish/zenbones.nvim",
        -- Optionally install Lush. Allows for more configuration or extending the colorscheme
        -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
        -- In Vim, compat mode is turned on as Lush only works in Neovim.
        requires = "rktjmp/lush.nvim"
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }


    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons',
        },
    }

    use 'p00f/nvim-ts-rainbow'

    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }

    use 'nvim-telescope/telescope-fzy-native.nvim'

    use 'Vimjas/vim-python-pep8-indent'

    use 'vim-test/vim-test'

    --use 'lervag/wiki.vim'

    --use({
    --    'hrsh7th/nvim-cmp',
    --    requires = {
    --        use 'neovim/nvim-lspconfig',
    --        use 'williamboman/nvim-lsp-installer',
    --        use 'hrsh7th/cmp-nvim-lsp',
    --        use 'hrsh7th/cmp-nvim-lua',
    --        --use 'hrsh7th/cmp-buffer',
    --        --use 'hrsh7th/cmp-path',
    --        --use 'hrsh7th/cmp-emoji',
    --        --use 'ray-x/lsp_signature.nvim',
    --        --use 'L3MON4D3/LuaSnip',
    --        --use 'saadparwaiz1/cmp_luasnip',
    --        use 'onsails/lspkind-nvim',
    --        use 'seblj/nvim-echo-diagnostics'
    --    }
    --})
    use 'ekickx/clipboard-image.nvim'

    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'


end)
