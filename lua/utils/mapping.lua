local M = {}

M.set = function(section)
	local mappings = require("core.mappings")[section]
	for mode, mode_values in pairs(mappings) do
		for keybind, mapping_info in pairs(mode_values) do
			local opts = mapping_info.opts or {}
			vim.keymap.set(mode, keybind, mapping_info[1], opts)
		end
	end
end

return M
