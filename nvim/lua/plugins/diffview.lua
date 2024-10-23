return {
  "sindrets/diffview.nvim",
  keys = {
    {
      "<leader>gdo",
      function()
        local input = vim.fn.input("Commits: ")
        if input ~= "" then
          vim.cmd("DiffviewOpen " .. input)
        else
          vim.cmd("DiffviewOpen")
        end
      end,
      desc = "🔭 Open Diffview",
    },
  },
}
