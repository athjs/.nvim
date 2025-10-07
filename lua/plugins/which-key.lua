return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    local wk = require("which-key")

    wk.setup({
      -- your configuration comes here
      -- or leave it empty to use the default settings
    })

    -- Document existing key chains
    wk.add({
      { "<leader>e", group = "Explorer" },
      { "<leader>f", group = "Find" },
      { "<leader>g", group = "Git" },
      { "<leader>l", group = "Format" },
      { "<leader>h", group = "Hunk/Home" },
      { "<leader>s", group = "Split" },
      { "<leader>t", group = "Tab" },
      { "<leader>x", group = "Trouble" },
      { "<leader>c", group = "Code" },
    })
  end,
}
