if vim.g.vscode then
    return {
        { "neovim/nvim-lspconfig", enabled = false, }
    }
else
    return {}
end