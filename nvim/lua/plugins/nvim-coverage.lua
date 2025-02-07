return {
  "andythigpen/nvim-coverage",
  version = "*",
  keys = {
    { "<leader>tt", "<cmd>CoverageToggle<cr>", desc = "🔍 Toggle coverage" },
    { "<leader>ts", "<cmd>CoverageSummary<cr>", desc = "📝 Coverage summary" },
    {
      "<leader>tll",
      function()
        local project_root = require("util").findGitDirectory(vim.loop.cwd())
        if not project_root then
          print("No git directory found")
          return
        end
        local coverage_report = project_root .. "/coverage/lcov.info"
        print(coverage_report)
      end,
      desc = "Load coverage",
    },
    {
      "<leader>tlc",
      function()
        local input = vim.fn.input("lcov.info path: ")
        if input ~= "" then
          vim.cmd("CoverageLoadLcov" .. input)
        end
      end,
      desc = "Load lcov",
    },
  },
  config = function()
    require("coverage").setup({
      auto_reload = true,
    })
  end,
}
