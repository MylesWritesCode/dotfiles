if vim.g.vscode then
  return {
    { "folke/tokyonight.nvim", enabled = false },
  }
else
  return {}
end
