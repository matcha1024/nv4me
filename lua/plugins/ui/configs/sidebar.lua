require("sidebar-nvim").setup({
    open = false,
    hide_statusline = false,
    side = "left",
    sections = { "datetime", "files", "diagnostics", "git", "symbols" },
    datetime = { format = "%b/%d, %H:%M:%S", clocks = { { name = "Local" } } },
    files = {
        show_hidden = true,
    },
})
