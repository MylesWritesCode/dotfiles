if vim.g.vscode then
    return {
        { "williamboman/mason-lspconfig.nvim", enabled = false }
    }
else
    return {}
end