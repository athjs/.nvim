---@type vim.lsp.Config
return {
    cmd = { "pyright-langserver", "--stdio" },
    filetypes = { "python" },                
    root_markers = { ".git", "pyproject.toml", "setup.py", "requirements.txt" },
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "basic", 
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
            },
        },
    },
}
