local packer = require("packer")

packer.init({
    auto_clean = true,
    compile_on_sync = true,
})

local pluginlists = {
    require("plugins.core.list"),
    require("plugins.ui.list"),
    require("plugins.lsp.list"),
    require("plugins.colorscheme.list"),
    require("plugins.tool.list"),
    require("plugins.git.list"),
}
local plugins = require("utils.plugin").merge_pluginlists(pluginlists)
plugins = require("utils.plugin").parse_plugins(plugins)
packer.startup({ plugins })
