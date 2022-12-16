local luasnip = require("luasnip")

luasnip.config.set_config({
	history = false,
	-- Update more often, :h events for more info.
	updateevents = "TextChanged,TextChangedI",
})
