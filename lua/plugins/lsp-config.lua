return {
	-- Mason Setup
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	-- Mason LSPconfig Integration
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensured_installed = {
					"lua_ls",
					"clangd",
					"ts_ls",
					"texlab",
					"pyright",
					"jdtls",
					"sqlls",
					"rust_analyzer",
				},
			})
		end,
	},
	-- LSPconfig Setup
	{
		"neovim/nvim-lspconfig",
		dependencies = { "hrsh7th/nvim-cmp", "hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-path", "hrsh7th/cmp-buffer" },
		config = function()
			local lspconfig = require("lspconfig")
			local cmp = require("cmp")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- LSP Server Configuration
			lspconfig.lua_ls.setup({})
			lspconfig.ts_ls.setup({ capabilities = capabilities })
			lspconfig.clangd.setup({ capabilities = capabilities })
			lspconfig.texlab.setup({ capabilities = capabilities })
			lspconfig.pyright.setup({ capabilities = capabilities })
			lspconfig.jdtls.setup({ capabilities = capabilities })
			lspconfig.rust_analyzer.setup({ capabilities = capabilities })
			lspconfig.taplo.setup({})
			-- General Keymaps for LSP
			local opts = { noremap = true, silent = true }
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
				settings = {
					["rust-analyzer"] = {
						assist = {
							importGranularity = "module",
							importPrefix = "by_self",
						},
						cargo = {
							allFeatures = true,
						},
						procMacro = {
							enable = true,
						},
						checkOnSave = {
							command = "clippy",
						},
					},
				},
			})
			-- nvim-cmp Configuration
			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					["<C-n>"] = cmp.mapping.select_next_item(),
					["<C-p>"] = cmp.mapping.select_prev_item(),
					["<C-d>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "buffer" },
					{ name = "path" },
				}),
			})

			-- `/` cmdline setup
			cmp.setup.cmdline("/", {
				mapping = cmp.mapping.preset.cmdline(),
				sources = {
					{ name = "buffer" },
				},
			})

			-- `:` cmdline setup
			cmp.setup.cmdline(":", {
				mapping = cmp.mapping.preset.cmdline(),
				sources = cmp.config.sources({
					{ name = "path" },
				}, {
					{
						name = "cmdline",
						option = {
							ignore_cmds = { "Man", "!" },
						},
					},
				}),
			})
			vim.diagnostic.config({
				virtual_text = true, -- Affiche les messages directement sur la ligne
				underline = true, -- Souligne les erreurs
				update_in_insert = false, -- N'affiche pas pendant que tu tapes
				severity_sort = true,
				signs = {
					text = {
						[vim.diagnostic.severity.ERROR] = "✘",
						[vim.diagnostic.severity.WARN] = "▲",
						[vim.diagnostic.severity.INFO] = "",
						[vim.diagnostic.severity.HINT] = "⚑",
					},
				},
			})
			local signs = { Error = "✘ ", Warn = "▲ ", Hint = "⚑ ", Info = "» " }
			for type, icon in pairs(signs) do
				local hl = "DiagnosticSign" .. type
				vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
			end
		end,
	},
}
