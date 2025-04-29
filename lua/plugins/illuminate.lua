return {
    "RRethy/vim-illuminate",
    event = "VeryLazy",
    config = function()
        require("illuminate").configure({
            delay = 200,
            filetypes_denylist = { "NvimTree", "TelescopePrompt" },
        })
    end,
}
