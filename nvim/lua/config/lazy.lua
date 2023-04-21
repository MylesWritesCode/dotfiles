local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end

-- Uncomment this and add the path of your local packpath within windows-dotfiles
-- local packpath = "/Users/mberueda/dev/windows-dotfiles/nvim/pack"
local packpath = "C:/Users/Myles/windows-dotfiles/nvim/pack"

vim.opt.rtp:prepend(vim.env.LAZY or lazypath)
vim.opt.rtp:append(vim.fn.stdpath "config" .. "/nvim/pack/after")


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
        priority = 1000
      },
      { import = "plugins" }
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
