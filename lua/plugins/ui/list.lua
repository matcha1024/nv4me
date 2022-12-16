return {
    ["nvim-lua/popup.nvim"] = { module = "plenary" },

    ["kyazdani42/nvim-web-devicons"] = {
        after = "noice.nvim",
        module = "nvim-web-devicons",
        config = function()
            require("nvim-web-devicons").setup({ default = true })
        end,
    },

    ["folke/noice.nvim"] = {
        after = "gruvbox-material",
        config = function()
            require("plugins.ui.configs.noice")
        end,
        requires = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },
    },

    ["glepnir/dashboard-nvim"] = {
        opt = false,
        config = function()
            require("plugins.ui.configs.dashboard")
        end,
    },

    ["sidebar-nvim/sidebar.nvim"] = {
        cmd = { "SidebarNvimFocus", "SidebarNvimClose" },
        config = function()
            require("plugins.ui.configs.sidebar")
        end,
        setup = function()
            require("utils.mapping").set("sidebarnvim")
        end,
    },

    ["NTBBloodbath/galaxyline.nvim"] = {
        -- setup = function()
        --     require("utils.lazy_load").on_file_open("galaxyline.nvim")
        -- end,
        after = "nvim-treesitter",
        cmd = "TabNew",
        config = function()
            require("plugins.ui.configs.galaxyline")
        end,
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
    },

    ["akinsho/bufferline.nvim"] = {
        event = "TabNew",
        tag = "v3.*",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("plugins.ui.configs.bufferline")
        end,
        setup = function()
            require("utils.mapping").set("bufferline")
        end,
    },

    ["karb94/neoscroll.nvim"] = {
        keys = { "<C-u>", "<C-d>", "gg", "G" },
        config = function()
            require("plugins.ui.configs.neoscroll")
        end,
    },

    ["edluffy/specs.nvim"] = {
        after = "neoscroll.nvim",
        config = function()
            require("plugins.ui.configs.specs")
        end,
    },

    ["petertriho/nvim-scrollbar"] = {
        after = "nvim-hlslens",
        config = function()
            require("plugins.ui.configs.scrollbar")
        end,
    },

    ["lukas-reineke/indent-blankline.nvim"] = {
        opt = true,
        setup = function()
            require("utils.lazy_load").on_file_open("indent-blankline.nvim")
        end,
        config = function()
            require("plugins.ui.configs.blankline")
        end,
    },
}
