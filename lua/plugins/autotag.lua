return {
    "windwp/nvim-ts-autotag",
    event = { "BufReadPre", "BufNewFile" },
    ft = { "html", "javascript", "typescript", "javascriptreact", "typescriptreact", "vue", "xml", "php", "markdown" },
    config = function()
        require("nvim-ts-autotag").setup({
            opts = {
                -- Defaults
                enable_close = true, -- Auto close tags
                enable_rename = true, -- Auto rename pairs of tags
                enable_close_on_slash = false, -- Auto close on trailing </
            },
            -- Restrict to specific filetypes only
            per_filetype = {
                ["html"] = {
                    enable_close = true,
                },
                ["javascript"] = {
                    enable_close = true,
                },
                ["typescript"] = {
                    enable_close = true,
                },
                ["javascriptreact"] = {
                    enable_close = true,
                },
                ["typescriptreact"] = {
                    enable_close = true,
                },
                ["vue"] = {
                    enable_close = true,
                },
                ["xml"] = {
                    enable_close = true,
                },
                ["php"] = {
                    enable_close = true,
                },
                ["markdown"] = {
                    enable_close = false, -- Usually don't want this in markdown
                },
            }
        })
    end,
}
