if vim.g.vscode then
    return {
        { "goolord/alpha-nvim", enabled = false }
    }
else
    return {}
end
