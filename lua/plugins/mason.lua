return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      -- Mason 基础设置
      require("mason").setup()
      require("mason-tool-installer").setup({
        ensure_installed = {
          -- Language server
          "html-lsp",
          "css-lsp",
          "typescript-language-server",
          "bash-language-server",
          "json-lsp",
          "yaml-language-server",
          "pyright", -- Python
          "lua-language-server", -- Lua
          -- "gopls",
          -- "clangd",
          "nginx-language-server",
          -- "rust-analyzer",
          -- Formatters
          "shfmt", -- Shell
          "xmlformatter", -- XML
          "stylua", -- Lua
          "rubyfmt", -- Ruby
          -- "rustfmt", -- Rust
          "black", -- Python
          "clang-format", -- C/C++
          -- "goimports", -- Go
          "ktlint", -- Kotlin
          "phpcbf", -- PHP
        },
        auto_update = true,
        run_on_start = true,
        start_delay = 3000, -- 3 second delay
      })
    end,
  },
}
