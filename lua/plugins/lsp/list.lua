return {
    ["williamboman/mason.nvim"] = {
        opt = true,
        setup = function()
            require("utils.lazy_load").on_file_open("mason.nvim")
        end,
    },

    ["williamboman/mason-lspconfig.nvim"] = {
        opt = true,
        setup = function()
            require("utils.lazy_load").on_file_open("mason-lspconfig.nvim")
        end,
    },

    ["neovim/nvim-lspconfig"] = {
        after = { "mason-lspconfig.nvim", "mason.nvim" },
        config = function()
            require("plugins.lsp.configs.setup")
        end,
    },

    ["glepnir/lspsaga.nvim"] = {
        after = "mason.nvim",
        branch = "main",
        config = function()
            require("plugins.lsp.configs.saga")
            require("plugins.lsp.configs.diagnostics").setup()
        end,
        setup = function()
            require("utils.mapping").set("saga")
        end,
    },

    ["onsails/lspkind-nvim"] = {},

    ["jose-elias-alvarez/null-ls.nvim"] = {
        after = "nvim-lspconfig",
        config = function()
            require("plugins.lsp.configs.null_ls")
        end,
    },
}
