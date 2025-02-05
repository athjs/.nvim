-- Définir le leader (doit être défini avant toute configuration liée à des mappings ou plugins)

vim.g.mapleader = " " -- Leader = Espace
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- dernière version stable
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins") -- Charger les plugins depuis le dossier plugins

vim.cmd.colorscheme("nightfox") -- Applique le thème

-- Options globales
vim.o.number = true -- Numéros de ligne
vim.o.relativenumber = true -- Numéros relatifs
vim.o.tabstop = 4 -- Taille des tabulations
vim.o.shiftwidth = 4 -- Taille des indentations
vim.o.expandtab = true -- Espaces au lieu de tabulations
vim.o.smartindent = true -- Indentation automatique
vim.o.termguicolors = true -- Couleurs 24-bit dans le terminal
vim.o.clipboard = "unnamedplus" -- Utilise le presse-papiers système pour toutes les opérations de copie/coller
-- Raccourcis globaux
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Sauvegarder le fichier" }) -- Leader + w pour sauvegarder
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quitter Neovim" }) -- Leader + q pour quitter

-- Navigation entre les fenêtres
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Fenêtre de gauche" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Fenêtre du bas" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Fenêtre du haut" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Fenêtre de droite" })
local keymap = vim.keymap
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Window
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split the window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split the window horizontally" })
keymap.set("n", "<leader>sc", "<cmd>close<CR>", { desc = "Close the current split" })

--Tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open a new tab" })
keymap.set("n", "<leader>tc", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Close to the next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Close to the previous tab" })

-- Raccourcis pour naviguer entre les fenêtres
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Aller à la fenêtre de gauche" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Aller à la fenêtre du bas" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Aller à la fenêtre du haut" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Aller à la fenêtre de droite" })
