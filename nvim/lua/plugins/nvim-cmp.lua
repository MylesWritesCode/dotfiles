return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    {
      "Saecki/crates.nvim",
      event = { "BufRead Cargo.toml" },
      opts = {
        completion = {
          cmp = { enabled = true },
        },
      },
    },
  },
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    opts.sources = vim.tbl_filter(function(v)
      return not vim.tbl_contains({ "luasnip" }, v.name)
    end, opts.sources)
  end,
}
