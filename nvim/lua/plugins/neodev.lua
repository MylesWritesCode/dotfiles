if vim.g.vscode then
    return {
        { "folke/neodev.nvim", enabled = false }
    }
else
    return {}
end