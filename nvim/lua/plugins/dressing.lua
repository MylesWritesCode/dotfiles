if vim.g.vscode then
    return {
        { "stevearc/dressing.nvim", enabled = false }
    }
else
    return {}
end
  