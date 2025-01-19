return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = {
      "williamboman/mason.nvim",
    },

    config = function()
      require("mason").setup()
      -- require("mason-lspconfig").setup()
      require("mason-tool-installer").setup({
        ensure_installed = {
          -------------------
          -- Language server
          -------------------
          "html-lsp", -- html
          "css-lsp", -- cssls
          "vtsls",
          "bash-language-server", --bashls
          "json-lsp", -- jsonls
          "yaml-language-server", -- yamlls
          "pyright",
          "lua-language-server", -- lua_ls
          -- "gopls",
          -- "clangd",
          "nginx-language-server", -- nginx_language_server
          -- "rust-analyzer",

          -------------------
          -- Formatters
          -------------------
          "prettier",
          "shfmt", -- Shell
          "xmlformatter", -- XML
          "stylua", -- Lua
          "black", -- Python
          -- "rubyfmt", -- Ruby
          -- "rustfmt", -- Rust
          "clang-format", -- C/C++
          -- "goimports", -- Go
          "google-java-format", -- Java
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
