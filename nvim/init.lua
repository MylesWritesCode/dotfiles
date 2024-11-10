-- if vim.fn.has("win32") then
--   local pwsh_executable = vim.fn.executable("pwsh") == 1
--   local shell = pwsh_executable and "pwsh" or "powershell"
--
--   vim.opt.shell = shell
--   vim.opt.shellcmdflag =
--     "-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues['Out-File:Encoding']='utf8';Remove-Alias -Force -ErrorAction SilentlyContinue tee;"
--   vim.opt.shellredir = '2>&1 | %%{ "$_" } | Out-File %s; exit $LastExitCode'
--   vim.opt.shellpipe = '2>&1 | %%{ "$_" } | tee %s; exit $LastExitCode'
--   vim.opt.shellquote = ""
--   vim.opt.shellxquote = ""
-- end

if vim.fn.executable("nu") == 1 then
  vim.opt.shell = "nu"
  vim.opt.shellcmdflag = "-c"
  vim.opt.shellquote = ""
  vim.opt.shellxquote = ""
end

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
