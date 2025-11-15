return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.formatting.clang_format,
                null_ls.builtins.formatting.clang_format.with({
                    extra_args = {
                        "--style",
                        "{BasedOnStyle: LLVM, IndentWidth: 4, TabWidth: 4, UseTab: Never}",
                    },
                }),
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.taplo,
            },
        })
    end,
}
