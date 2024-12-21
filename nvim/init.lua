if vim.fn.executable("nu") == 1 then
  vim.opt.shell = "nu"
  vim.opt.shellcmdflag = "-c"
  vim.opt.shellquote = ""
  vim.opt.shellxquote = ""
end

-- rust-analyzer workaround pre v0.11 neovim
for _, method in ipairs({ "textDocument/diagnostic", "workspace/diagnostic" }) do
  local default_diagnostic_handler = vim.lsp.handlers[method]
  vim.lsp.handlers[method] = function(err, result, context, config)
    if err ~= nil and err.code == -32802 then
      return
    end
    return default_diagnostic_handler(err, result, context, config)
  end
end

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
