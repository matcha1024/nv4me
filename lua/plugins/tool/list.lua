return {
    ["windwp/nvim-autopairs"] = {
        event = { "InsertEnter", "CmdlineEnter" },
        config = function()
            require("nvim-autopairs").setup()
        end,
    },

    ["L3MON4D3/LuaSnip"] = {
        event = { "InsertEnter", "CmdlineEnter" },
        config = function()
            require("plugins.tool.configs.luasnip")
        end,
    },

    ["hrsh7th/nvim-cmp"] = {
        after = { "LuaSnip", "nvim-autopairs" },
        config = function()
            require("plugins.tool.configs.cmp")
        end,
        requires = {
            { "hrsh7th/cmp-nvim-lsp", after = "nvim-lspconfig" },
            { "hrsh7th/cmp-path", after = "nvim-cmp" },
            { "hrsh7th/cmp-buffer", after = "nvim-cmp" },
            { "hrsh7th/cmp-cmdline", after = "nvim-cmp" },
            { "saadparwaiz1/cmp_luasnip", after = "nvim-cmp" },
        },
    },

    ["simrat39/symbols-outline.nvim"] = {
        cmd = "SymbolsOutline",
    },

    ["numToStr/Comment.nvim"] = {
        keys = { "gc", "gcc", "gbc" },
        config = function()
            require("Comment").setup({})
        end,
    },

    ["nvim-treesitter/nvim-treesitter"] = {
        run = ":TSUpdate",
        setup = function()
            require("utils.lazy_load").on_file_open("nvim-treesitter")
        end,
        cmd = require("utils.lazy_load").treesitter_cmds,
        config = function()
            require("plugins.tool.configs.treesitter")
        end,
    },

    ["nvim-treesitter/nvim-treesitter-textobjects"] = {
        after = "nvim-treesitter",
    },

    ["nvim-telescope/telescope.nvim"] = {
        cmd = "Telescope",
        config = function()
            require("plugins.tool.configs.telescope")
        end,
        setup = function()
            require("utils.mapping").set("telescope")
        end,
        requires = {
            "nvim-lua/popup.nvim",
            "nvim-lua/plenary.nvim",
        },
    },

    ["akinsho/nvim-toggleterm.lua"] = {
        keys = "<C-\\>",
        cmd = "ToggleTerm",
        config = function()
            require("plugins.tool.configs.toggleterm")
        end,
        setup = function()
            require("utils.mapping").set("toggleterm")
        end,
    },

    ["kevinhwang91/nvim-hlslens"] = {
        opt = true,
        setup = function()
            require("utils.lazy_load").on_file_open("nvim-hlslens")
            require("utils.mapping").set("hlslens")
        end,
    },

    ["norcalli/nvim-colorizer.lua"] = {
        opt = true,
        setup = function()
            require("utils.lazy_load").on_file_open("nvim-colorizer.lua")
        end,
        config = function()
            require("plugins.tool.configs.colorizer")
        end,
    },

    ["phaazon/hop.nvim"] = {
        keys = { "gh" },
        cmd = { "HopWord", "HopChar1" },
        config = function()
            require("hop").setup({})
        end,
    },

    ["ggandor/lightspeed.nvim"] = {
        keys = { "f", "F", "t", "T" },
        config = function()
            require("lightspeed").setup({})
        end,
    },

    ["tweekmonster/startuptime.vim"] = {
        cmd = "StartupTime",
    },

    ["RRethy/vim-illuminate"] = {
        event = "CursorHold",
        config = function()
            vim.g.Illuminate_delay = 1000
        end,
    },
}
