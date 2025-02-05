return {
	"catppuccin/nvim", -- Spécifie le plugin de thème Catppuccin
	lazy = false, -- Charge le plugin immédiatement au démarrage
	name = "catppuccin", -- Nom du thème
	priority = 1000, -- Définit la priorité de ce thème
	config = function() -- Fonction de configuration
		-- vim.cmd.colorscheme("catppuccin") -- Applique le thème
	end,
}
