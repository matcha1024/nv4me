require("sidebar-nvim").setup({
    open = false,
    hide_statusline = false,
    side = "left",
    sections = { "datetime", "files", "diagnostics", "git", "symbols" },
    datetime = { format = "%a %b %d, %H:%M:%S", clocks = { { name = "Tokyo" } } },
    files = {
        show_hidden = true,
    },
})
