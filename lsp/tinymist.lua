---@type vim.lsp.Config
return {
  name = "tinymist",
  cmd = { "tinymist" },

  filetypes = { "typst" },

  root_markers = {
    "typst.toml",
    ".git",
  },

  settings = {
    tinymist = {
      formatterMode = "typstyle",  -- ou "disable"
      exportPdf = "onSave",        -- "never", "onType", "onSave"
    },
  },
}
