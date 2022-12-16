return {
    ["marko-cerovac/material.nvim"] = {
        event = "ColorSchemePre",
        setup = function()
            vim.g.material_style = "oceanic"
        end,
    },

    ["folke/tokyonight.nvim"] = {
        event = "ColorSchemePre",
        config = function()
            require("tokyonight").setup({
                style = "night",
            })
        end,
    },

    ["mhartington/oceanic-next"] = {
        event = "ColorSchemePre",
    },

    ["sainnhe/edge"] = {
        event = "ColorSchemePre",
        setup = function()
            vim.g.edge_diagnostic_virtual_text = "colored"
        end,
    },

    ["shaunsingh/nord.nvim"] = {
        event = "ColorSchemePre",
    },

    ["ishan9299/nvim-solarized-lua"] = {
        event = "ColorSchemePre",
    },

    ["sainnhe/everforest"] = {
        event = "ColorSchemePre",
        setup = function()
            vim.g.everforest_diagnostic_virtual_text = "colored"
        end,
    },

    ["frenzyexists/aquarium-vim"] = {
        event = "ColorSchemePre",
    },

    -- Default
    ["sainnhe/gruvbox-material"] = {
        event = "VimEnter",
        setup = function()
            vim.g.gruvbox_material_diagnostic_virtual_text = "colored"
        end,
        config = function()
            vim.cmd("colorscheme gruvbox-material")
        end,
    },
}
