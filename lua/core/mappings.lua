local M = {}

M.general = {
    i = {
        ["<C-j>"] = { "<ESC>" },
    },

    n = {
        ["<C-j>"] = { "<ESC>" },
        ["[p"] = { "<CMD> pu! <CR>" },
        ["]p"] = { "<CMD> pu <CR>" },
    },

    v = {
        ["<C-j>"] = { "<ESC>" },
    },
}

M.bufferline = {
    n = {
        [";t"] = { "<CMD> tabnew <CR>" },
        [";w"] = { "<CMD> bdelete! <CR>" },
        [","] = { "<CMD> BufferLineCyclePrev <CR>" },
        ["."] = { "<CMD> BufferLineCycleNext <CR>" },
    },
}

M.sidebarnvim = {
    n = {
        [";s"] = {
            "<CMD> if stridx(@%, 'SidebarNvim') == -1 <CR> SidebarNvimFocus <CR> else <CR> SidebarNvimClose <CR> endif <CR>",
        },
    },
}

M.hlslens = {
    n = {
        ["n"] = { "<CMD> execute('normal! ' . v:count1 . 'n') <CR> <CMD> lua require('hlslens').start() <CR>" },
        ["N"] = { "<CMD> execute('normal! ' . v:count1 . 'N') <CR> <CMD> lua require('hlslens').start() <CR>" },
        ["*"] = { "* <CMD> lua require('hlslens').start() <CR>" },
        ["#"] = { "# <CMD> lua require('hlslens').start() <CR>" },
        ["<space>l"] = { "<CMD> noh <CR>" },
    },
}

M.saga = {
    n = {
        ["gh"] = { "<CMD> Lspsaga lsp_finder <CR>", opts = { silent = true } },
        ["<leader>ca"] = { "<CMD> Lspsaga code_action <CR>", opts = { silent = true } },
        ["gr"] = { "<CMD> Lspsaga rename <CR>", opts = { silent = true } },
        ["gd"] = { "<CMD> Lspsaga peek_definition <CR>", opts = { silent = true } },
        ["<leader>cd"] = { "<CMD> Lspsaga show_line_diagnostics <CR>", opts = { silent = true } },
        ["<leader>cd"] = { "<CMD> Lspsaga show_cursor_diagnostics <CR>", opts = { silent = true } },
        ["<leader>o"] = { "<CMD> LSoutlineToggle <CR>", opts = { silent = true } },
        ["K"] = { "<CMD> Lspsaga hover_doc <CR>", opts = { silent = true } },
    },
}

M.toggleterm = {
    t = {
        ["<C-w>h"] = { "<CMD> wincmd h <CR>" },
        ["<C-w>j"] = { "<CMD> wincmd j <CR>" },
        ["<C-w>k"] = { "<CMD> wincmd k <CR>" },
        ["<C-w>l"] = { "<CMD> wincmd l <CR>" },
    },
}

M.telescope = {
    n = {
        [";f"] = { "<CMD> Telescope find_files <CR>" },
        [";r"] = { "<CMD> Telescope live_grep <CR>" },
    },
}

return M
