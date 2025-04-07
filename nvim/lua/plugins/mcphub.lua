local function get_config()
  local path
  if vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1 then
    path = vim.fn.expand("~\\.config\\nvim") .. "\\lua\\plugins\\mcphub.json"
  elseif vim.fn.has("mac") == 1 then
    path = vim.fn.expand("~/.config/nvim") .. "/lua/plugins/mcphub.json"
  else
    path = vim.fn.expand("<script>:p:h") .. "/lua/plugins/mcphub.json"
  end
  return path
end
return {
  "ravitemer/mcphub.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim", -- Required for Job and HTTP requests
  },
  cmd = "MCPHub", -- lazily start the hub when `MCPHub` is called
  build = "npm install -g mcp-hub@latest", -- Installs required mcp-hub npm module
  -- build = "bundled_build.lua",
  config = function()
    require("mcphub").setup({
      -- Required options
      port = 65501, -- Port for MCP Hub server
      config = get_config(),

      -- Optional options
      on_ready = function(hub)
        -- Called when hub is ready
      end,
      on_error = function(err)
        -- Called on errors
      end,
      log = {
        level = vim.log.levels.WARN,
        to_file = false,
        file_path = nil,
        prefix = "MCPHub",
      },
      extensions = {
        codecompanion = {
          show_result_in_chat = true,
          make_vars = true,
          make_slash_commands = true,
        },
      },
      use_bundled_binary = false,
    })
  end,
}
