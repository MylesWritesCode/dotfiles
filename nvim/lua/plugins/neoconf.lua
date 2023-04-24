if vim.g.vscode then
    return {
        { "folke/neoconf.nvim", enabled = false }
    }
else
    return {}
end
