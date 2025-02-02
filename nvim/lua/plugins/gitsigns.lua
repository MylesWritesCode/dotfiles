return {
  "lewis6991/gitsigns.nvim", -- Git signs in the statuscolumn
  opts = {
    signs = {
      add = { text = "│" },
      change = { text = "│" },
      delete = { text = "│" },
      topdelete = { text = "│" },
      changedelete = { text = "│" },
      untracked = { text = "│" },
    },
    signs_staged_enable = false,
    numhl = false,
    linehl = false,
  },
}
