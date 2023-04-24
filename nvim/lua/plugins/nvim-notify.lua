if vim.g.vscode then
    return {
        { "rcarriga/nvim-notify", enabled = false }
    }
else
    return {}
end
