return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local keymap = vim.keymap
    keymap.set("n", "<leader>ee", "<cmd>Neotree toggle<CR>", { desc = "Open and close the Neo-tree" })
    keymap.set("n", "<leader>ef", "<cmd>Neotree filesystem toggle<CR>", { desc = "Toggle Neo-tree filesystem" })
    keymap.set("n", "<leader>eb", "<cmd>Neotree buffers toggle<CR>", { desc = "Toggle Neo-tree buffers" })
  end,
}
