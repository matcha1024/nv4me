return {
    ["lewis6991/gitsigns.nvim"] = {
        ft = "gitcommit",
        setup = function()
            require("utils.lazy_load").gitsigns()
        end,
        config = function()
            require("plugins.git.configs.gitsigns")
        end,
    },

    ["TimUntersberger/neogit"] = {
        cmd = "Neogit",
        config = function()
            require("plugins.git.configs.neogit")
        end,
    },

    ["sindrets/diffview.nvim"] = {
        cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
        config = function()
            require("diffview").setup({})
        end,
    },
}
