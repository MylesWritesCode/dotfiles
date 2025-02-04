return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "hrsh7th/nvim-cmp", -- Optional: For using slash commands and variables in the chat buffer
    "nvim-telescope/telescope.nvim", -- Optional: For using slash commands
    { "stevearc/dressing.nvim", opts = {} }, -- Optional: Improves `vim.ui.select`
  },
  keys = {
    { "<leader>ac", "<cmd>CodeCompanionChat<cr>", desc = "Open chat" },
    { "<leader>aa", "<cmd>CodeCompanionActions<cr>", desc = "Companion Actions" },
    { "<leader>at", "<cmd>CodeCompanionChat Toggle<cr>", desc = "Toggle a chat buffer" },
  },
  config = function()
    require("codecompanion").setup({
      strategies = {
        chat = {
          adapter = "ollama",
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
            name = "hf.co/unsloth/DeepSeek-R1-Distill-Llama-8B-GGUF:Q6_K",
            schema = {
              model = {
                default = "hf.co/unsloth/DeepSeek-R1-Distill-Llama-8B-GGUF:Q6_K",
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
      display = {
        action_palette = {
          provider = "default",
        },
      },
    })
  end,
}
