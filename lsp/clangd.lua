--@type vim.lsp.Config
return {
    cmd = { "clangd" },
    filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
    root_markers = {
        ".clangd",
        ".clang-tidy",
        ".clang-format",
        "compile_commands.json",
        "compile_flags.txt",
        "configure.ac", -- AutoTools
        ".git",
    },
    capabilities = {
        textDocument = {
            completion = {
                editsNearCursor = true,
            },
        },
        offsetEncoding = { "utf-8", "utf-16" },
    },
    on_attach = function()
        vim.api.nvim_buf_create_user_command(0, "LspClangdSwitchSourceHeader", function()
            switch_source_header(0)
        end, { desc = "Switch between source/header" })

        vim.api.nvim_buf_create_user_command(0, "LspClangdShowSymbolInfo", function()
            symbol_info()
        end, { desc = "Show symbol info" })
    -- on_new_config = function(config, _)
    --     table.insert(config.cmd, "--header-insertion=never")
    --     table.insert(config.cmd, "-I/opt/homebrew/Cellar/avr-gcc@9/9.4.0_1/lib/avr-gcc/9/gcc/avr/9.4.0/include")
    --   end,
    end
}
