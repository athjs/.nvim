vim.lsp.enable({ "clangd", "lua_ls", "pyright", "taplo", "rust-analyzer", "tinymist" })

vim.diagnostic.config({
    virtual_text = {
        virtual_lines = true,
        virtual_text = true,
        current_line = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
    },
    float = {
        border = "rounded",
        source = true,
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN] = "",
            [vim.diagnostic.severity.INFO] = "",
            [vim.diagnostic.severity.HINT] = "",
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = "ErrorMsg",
            [vim.diagnostic.severity.WARN] = "WarningMsg",
        },
    },
})
