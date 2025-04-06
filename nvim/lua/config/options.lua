-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- vim.g.lazyvim_picker = "telescope"
vim.g.lazyvim_rust_diagnostics = "bacon-ls"
vim.g.snacks_animate = false

local opt = vim.opt

opt.colorcolumn = "80,120"

vim.keymap.set("n", "<leader>y", function()
  vim.fn.setreg(vim.v.register, vim.fn.expand("%:p"))
end, { desc = "Copy filename+line to clipboard" })

-- This is the old way to do it. Instead, just install wl-clipboard for
-- cross-os copy/paste with `sudo apt install wl-clipboard`
-- Use the right clipboard when on WSL
-- local function is_wsl()
--   local wsl_check = os.getenv("WSL_DISTRO_NAME") ~= nil
--   return wsl_check
-- end
--
-- if is_wsl() then
--   vim.g.clipboard = {
--
--     name = "WSL Yank",
--     copy = {
--       ["+"] = "clip.exe",
--       ["*"] = "clip.exe",
--     },
--
--     paste = {
--       ["+"] = "win32yank.exe -o --lf",
--       ["*"] = "win32yank.exe -o --lf",
--     },
--     cache_enabled = 1,
--   }
-- end
