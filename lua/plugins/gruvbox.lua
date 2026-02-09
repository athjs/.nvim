return {
    "https://gitlab.com/motaz-shokry/gruvbox.nvim",
    name = "gruvbox",
    priority = 1000,
    config = function()
        require("gruvbox").setup({
            -- Use transparent background
            -- Set to false to use the colorscheme's background color
            transparent = true,
            -- Set terminal colors
            terminal_colors = true,
        })
    end,
}
