return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    styles = {
      lazygit = {
        width = 0,
        height = 0,
      },
      notification = {
        wo = { wrap = true }, -- Wrap notifications
      },
    },
    bigfile = { enabled = true },
    bufdelete = { enabled = true },
    dashboard = {
      enabled = true,
      preset = {
        keys = {
          { icon = " ", key = "l", desc = "Load Session", action = ":lua require('persisted').load()" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = "󱘣 ", key = "s", desc = "Search Files", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
      sections = {
        {
          section = "terminal",
          cmd = "lolcat --seed=24 ~/.config/nvim/static/neovim.cat",
          indent = -5,
          height = 8,
          width = 69,
          padding = 1,
        },
        {
          section = "keys",
          indent = 1,
          padding = 1,
        },
        { section = "startup" },
      },
    },
    indent = {
      enabled = true,
      scope = { enabled = false },
    },
    lazygit = {
      theme = {
        [241] = { fg = "Special" },
        activeBorderColor = { fg = "String", bold = true },
        cherryPickedCommitBgColor = { fg = "Identifier" },
        cherryPickedCommitFgColor = { fg = "Function" },
        defaultFgColor = { fg = "Normal" },
        inactiveBorderColor = { fg = "FloatBorder" },
        optionsTextColor = { fg = "Function" },
        searchingActiveBorderColor = { fg = "String", bold = true },
        selectedLineBgColor = { bg = "Visual" }, -- set to `default` to have no background colour
        unstagedChangesColor = { fg = "DiagnosticError" },
      },
    },
    picker = {
      enabled = true,
    },
    notifier = { enabled = true },
    terminal = { enabled = true },
  },
}
