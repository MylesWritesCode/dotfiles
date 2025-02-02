-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- vim.g.lazyvim_picker = "telescope"
vim.g.lazyvim_rust_diagnostics = "rust-analyzer"
vim.g.snacks_animate = true

local opt = vim.opt

opt.colorcolumn = "80,120"
