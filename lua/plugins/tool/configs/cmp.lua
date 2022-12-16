local cmp = require("cmp")

local function border(hl_name)
    return {
        { "╭", hl_name },
        { "─", hl_name },
        { "╮", hl_name },
        { "│", hl_name },
        { "╯", hl_name },
        { "─", hl_name },
        { "╰", hl_name },
        { "│", hl_name },
    }
end

cmp.setup({
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    mapping = {
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.close(),
        ["<Tab>"] = cmp.mapping.select_next_item(),

        ["<Up>"] = function(fallback)
            if cmp.get_active_entry() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end,
        ["<Down>"] = function(fallback)
            if cmp.get_active_entry() then
                cmp.select_next_item()
            else
                fallback()
            end
        end,
        ["<CR>"] = function(fallback)
            if cmp.get_selected_entry() then
                cmp.confirm()
            else
                fallback()
            end
        end,
    },
    sources = require("cmp").config.sources({
        { name = "nvim_lsp" },
    }, {
        { name = "buffer" },
    }, {
        { name = "path" },
        { name = "luasnip" },
    }),
    formatting = {
        format = require("lspkind").cmp_format({ with_text = true, maxwidth = 50 }),
    },

    preselect = cmp.PreselectMode.None,

    window = {
        completion = {
            border = border("CmpBorder"),
        },
        documentation = {
            border = border("CmpDocBorder"),
        },
    },
})

cmp.setup.cmdline(":", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = "path" },
    }, {
        { name = "cmdline" },
    }),
})

local cmp_autopairs = require("nvim-autopairs.completion.cmp")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { tex = "" } }))
