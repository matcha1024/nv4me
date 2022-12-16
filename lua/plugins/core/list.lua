return {
    ["nvim-lua/plenary.nvim"] = {},

    ["lewis6991/impatient.nvim"] = {},

    ["wbthomason/packer.nvim"] = {
        cmd = require("utils.lazy_load").packer_cmds,
        config = function()
            require("plugins")
        end,
    },
}
