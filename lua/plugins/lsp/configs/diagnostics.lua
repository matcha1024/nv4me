local M = {}

M.signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

M.setup = function()
    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = true,
        signs = true,
        update_in_insert = false,
        underline = true,
    })

    for type, icon in pairs(M.signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end
end

return M
