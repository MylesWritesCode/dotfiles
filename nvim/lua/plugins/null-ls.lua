if vim.g.vscode then
    return { 
        { "jose-elias-alvarez/null-ls.nvim", enabled = false } 
    }
else
    return {}
end