return {
  {
    "neovim/nvim-lspconfig",
    event = "User IceLoad",
    dependencies = {
      "saghen/blink.cmp",
      -- "williamboman/mason.nvim",
      -- "williamboman/mason-lspconfig.nvim",
    },

    -- example using `opts` for defining servers
    opts = {
      servers = {
        bashls = {},
        html = {},
        cssls = {},
        vtsls = {},
        jsonls = {},
        yamlls = {},
        lua_ls = {},
        pyright = {},
        nginx_language_server = {},
      },
    },

    config = function(_, opts)
      -- -- Mason 基础设置
      -- require("mason").setup()
      -- -- LSP 服务器设置
      -- require("mason-lspconfig").setup({
      --   ensure_installed = {
      --     "bashls",
      --     "html",
      --     "cssls",
      --     "vtsls",
      --     "jsonls",
      --     "yamlls",
      --     "lua_ls",
      --     "pyright",
      --     "nginx_language_server",
      --   },
      --   automatic_installation = true,
      -- })

      local lspconfig = require("lspconfig")
      for server, config in pairs(opts.servers) do
        -- passing config.capabilities to blink.cmp merges with the capabilities in your
        -- `opts[server].capabilities, if you've defined it
        config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
        lspconfig[server].setup(config)
      end
    end,

    -- -- example calling setup directly for each LSP
    -- config = function()
    --   local capabilities = require("blink.cmp").get_lsp_capabilities()
    --   local lspconfig = require("lspconfig")
    --
    --   lspconfig["lua_ls"].setup({ capabilities = capabilities })
    -- end,
  },
}
