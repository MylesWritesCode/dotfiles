if vim.fn.executable("nu") == 1 then
  vim.opt.shell = "nu"
  vim.opt.shellcmdflag = "-c"
  vim.opt.shellquote = ""
  vim.opt.shellxquote = ""
end

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
