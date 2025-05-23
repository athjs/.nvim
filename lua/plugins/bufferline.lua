return
-- using lazy.nvim
{
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = {
		options = {
			mode = "tabs",
			separator_style = "slant",
			diagnostics = "nvim_lsp",
		},
	},
}
