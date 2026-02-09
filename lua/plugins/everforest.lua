return {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    opts = {
        transparent = true,
        styles = {
            sidebar = "tansparent",
            floats = "transparent",
        },
    },
    config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.everforest_enable_italic = true
    end,
}
