if vim.g.vscode then 
    return {
        { "nvim-lualine/lualine.nvim", enabled = false }
    }
else
    return {}
end