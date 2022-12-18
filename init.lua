vim.defer_fn(function()
	pcall(require, "impatient")
end, 0)

require("core").initial_startup()
require("core.options")
require("utils.mapping").set("general")
