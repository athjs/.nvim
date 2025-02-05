return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {
		indent = {
			char = "│", -- Caractère pour les lignes d'indentation
			highlight = "IndentGrey", -- Couleur par défaut (grise)
		},
		scope = {
			enabled = true, -- Active le surlignage du bloc actuel
			highlight = "IndentActive", -- Couleur pour le bloc actif (orange)
		},
	},
	config = function()
		-- Définir les couleurs pour les groupes de surlignage
		vim.cmd([[
            highlight IndentGrey guifg=#808080 gui=nocombine " Gris
            highlight IndentActive guifg=#FFA500 gui=nocombine " Orange
        ]])

		-- Configurer ibl
		require("ibl").setup({
			indent = {
				char = "│",
				highlight = "IndentGrey",
			},
			scope = {
				enabled = true,
				highlight = "IndentActive",
			},
		})
	end,
}
