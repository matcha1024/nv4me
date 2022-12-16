require("bufferline").setup({
	options = {
		mode = "tabs",
		numbers = "none",
		close_command = "bdelete! %d",
		middle_mouse_command = "bdelete! %d",
		show_close_icon = true,
		offsets = {
			{
				filetype = "SidebarNvim",
				text = "SidebarNvim",
				highlight = "Directory",
				text_align = "left",
			},
		},
		diagnostics = "nvim_lsp",
		hover = {
			enabled = true,
			delay = 200,
			reveal = { "close" },
		},
		always_show_bufferline = false,
	},
})
