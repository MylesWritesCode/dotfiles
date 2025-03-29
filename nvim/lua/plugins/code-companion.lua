return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "hrsh7th/nvim-cmp", -- Optional: For using slash commands and variables in the chat buffer
    "nvim-telescope/telescope.nvim", -- Optional: For using slash commands
    "ravitemer/mcphub.nvim",
    { "stevearc/dressing.nvim", opts = {} }, -- Optional: Improves `vim.ui.select`
  },
  keys = {
    { "<leader>ac", "<cmd>CodeCompanionChat<cr>", desc = "Open chat" },
    { "<leader>aa", "<cmd>CodeCompanionActions<cr>", desc = "Companion Actions" },
    { "<leader>at", "<cmd>CodeCompanionChat Toggle<cr>", desc = "Toggle a chat buffer" },
  },
  config = function()
    require("codecompanion").setup({
      display = {
        action_palette = {
          provider = "default",
        },
      },
      strategies = {
        chat = {
          adapter = "ollama",
          tools = {
            ["mcp"] = {
              callback = require("mcphub.extensions.codecompanion"),
              description = "Call tools and resources from the MCP Servers",
              opts = {
                user_approval = true,
              },
            },
            vectorcode = {
              description = "Run VectorCode to retrieve the project context.",
              callback = require("vectorcode.integrations").codecompanion.chat.make_tool(),
            },
          },
        },
        inline = {
          adapter = "ollama",
        },
        agent = {
          adapter = "ollama",
        },
      },
      adapters = {
        ollama = function()
          return require("codecompanion.adapters").extend("ollama", {
            name = "hf.co/unsloth/Qwen2.5-Coder-14B-Instruct-GGUF:Q4_K_M",
            -- name = "hf.co/bartowski/Qwen_QwQ-32B-GGUF:Q4_K_M",
            env = {
              -- flash_attention = "true",
              -- kv_cache_type = "f16",
            },
            schema = {
              model = {
                default = "hf.co/unsloth/Qwen2.5-Coder-14B-Instruct-GGUF:Q4_K_M",
                -- default = "hf.co/bartowski/Qwen_QwQ-32B-GGUF:Q4_K_M",
              },
              temperature = {
                order = 2,
                mapping = "parameters",
                type = "number",
                optional = true,
                default = 0.1,
                desc = "What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. We generally recommend altering this or top_p but not both.",
                validate = function(n)
                  return n >= 0 and n <= 2, "Must be between 0 and 2"
                end,
              },
              num_ctx = {
                default = 16384,
              },
              num_predict = {
                default = -1,
              },
            },
          })
        end,
      },
    })
  end,
}
