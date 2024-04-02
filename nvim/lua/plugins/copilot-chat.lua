if vim.g.vscode then
  return {}
else
  return {
    {
      "CopilotC-Nvim/CopilotChat.nvim",
      branch = "canary",
      dependencies = {
        { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
        { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
      },
      opts = {
        debug = true, -- Enable debugging
        window = {
          layout = "horizontal",
        },
      },
      -- See Commands section for default commands if you want to lazy load on them
    },
  }
end