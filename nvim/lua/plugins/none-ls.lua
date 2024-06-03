if vim.g.vscode then
  return {}
else
  return {
    "nvimtools/none-ls.nvim",
    ops = function(_, opts)
      local nls = require('null-ls').builtins
      opts.sources = {
        nls.formatting.biome.with({
          filetypes = { 'javascript', 'javascriptreact', 'json', 'jsonc', 'typescript', 'typescriptreact' },
          args = {
            'check',
            '--apply-unsafe', 'formatter-enabled=true',
            '--organize-imports-enabled=true',
            '--skip-errors',
            '--stdin-file-path=$FILENAME',

          }
        })
      }
    end,
  }
end
