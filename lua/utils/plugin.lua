local M = {}

M.merge_pluginlists = function(pluginlists)
	local plugins = {}
	for _, pluginlist in ipairs(pluginlists) do
		plugins = vim.tbl_deep_extend("force", plugins, pluginlist)
	end

	return plugins
end

M.parse_plugins = function(plugins)
	local parsed_plugins = {}
	for name, config in pairs(plugins) do
		if config and type(config) == "table" then
			plugins[name][1] = name
			parsed_plugins[#parsed_plugins + 1] = plugins[name]
		end
	end

	return parsed_plugins
end

return M
