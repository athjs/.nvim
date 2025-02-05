return {

	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				theme = "everforest", -- Utiliser le thème base16 dans lualine
			},
		})
	end,
}
