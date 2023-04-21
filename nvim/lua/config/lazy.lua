local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end

vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

local packpath = os.getenv("NVIM_PACK_PATH")
vim.opt.rtp:append(packpath or "C:/Users/Myles/windows-dotfiles/nvim/lua/pack") -- Doesn't seem to add to runtimepath for some reason

if not vim.g.vscode then
  require("lazy").setup({
    spec = {
      { "LazyVim/LazyVim", import = "lazyvim.plugins" },
      { import = "plugins" },
    },
    defaults = {
      lazy = false,
      version = false,
    },
    install = { colorscheme = { "tokyonight", "habamax" } },
    checker = { enabled = true }, -- automatically check for plugin updates
    performance = {
      rtp = {
        disabled_plugins = {
          "gzip",
          -- "matchit",
          -- "matchparen",
          -- "netrwPlugin",
          "tarPlugin",
          "tohtml",
          "tutor",
          "zipPlugin",
        },
      },
    },
  })
else
  -- This works, but something else is causing color to be transffered to VSCode for some unknown reason.
  require("lazy").setup({
    spec = {
      {
        "LazyVim/LazyVim",
        opts = {
          colorscheme = function() end,
          editor = function() end,
          lsp = function() end,
          treesitter = function() end,
          ui = function() end,
        },
        priority = 1000,
      },
      { import = "plugins" },
    },
    defaults = {
      lazy = false,
      version = false,
    },
    performance = {
      rtp = {
        disabled_plugins = {
          "gzip",
          -- "matchit",
          -- "matchparen",
          -- "netrwPlugin",
          "tarPlugin",
          "tohtml",
          "tutor",
          "zipPlugin",
        },
      },
    },
  })
end
