if vim.g.vscode then
    return {
        { "hrsh7th/cmp-nvim-lsp",     enabled = false },
        { "hrsh7th/cmp-buffer",       enabled = false },
        { "hrsh7th/cmp-path",         enabled = false },
        { "saadparwaiz1/cmp_luasnip", enabled = false },
    }
end
