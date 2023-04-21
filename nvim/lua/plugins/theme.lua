if vim.g.vscode then
  return {
    {
      "LazyVim/LazyVim",
      opts = {
        colorcheme = function() end
      }
    },
    { "folke/tokyonight.nvim", enabled = false },
  }
else
  return {}
end
