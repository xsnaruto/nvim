return {
    {
    "stevearc/conform.nvim",
    branch = "nvim-0.9",
    -- branch = "master",
    event = "User IceLoad",
    config = function()
      -- Conform 配置
      require("conform").setup({
        -- Set default options
        default_format_opts = {
          lsp_format = "fallback",
        },
        -- 为不同文件类型设置格式化工具
        formatters_by_ft = {
          ["_"] = { "indent" },

          html = { "prettier" },
          css = { "prettier" },
          javascript = { "prettier" },
          typescript = { "prettier" },
          markdown = { "prettier" },
          json = { "prettier" },
          yaml = { "prettier" },
          vue = { "prettier" },

          sh = { "shfmt" },
          bash = { "shfmt" },

          lua = { "stylua" },
          xml = { "xmlformat" },
          ruby = { "rubyfmt" },
          rust = { "rustfmt" },
          python = { "black" },
          go = { "goimports" },
          c = { "clang-format" },
          cpp = { "clang-format" },
          objc = { "clang-format" },
          java = { "clang-format" },
          php = { "phpcbf" },
          kotlin = { "ktlint" },

          nginx = { "nginxfmt" },
        },
        formatters = {
          prettier = {
            command = "prettier",
            options = {
              ft_parsers = {
                javascript = "babel",
                javascriptreact = "babel",
                typescript = "typescript",
                typescriptreact = "typescript",
                vue = "vue",
                css = "css",
                scss = "scss",
                less = "less",
                html = "html",
                json = "json",
                jsonc = "json",
                yaml = "yaml",
                markdown = "markdown",
                ["markdown.mdx"] = "mdx",
                graphql = "graphql",
                handlebars = "glimmer",
              },
              ext_parsers = {
                qmd = "markdown",
              },
            },
            prepend_args = {
              -- "--use-tabs",
              -- "false",
              -- "--tab-width",
              -- "2",
            },
          },
          stylua = {
            prepend_args = {
              "--indent-type=spaces",
              "--indent-width=2",
            },
          },
          nginxfmt = {
            command = "nginxfmt",
            args = { "-" }, -- 使用单个短横线而不是 --pipe
            stdin = true,
          },
        },
      })

      -- 添加快捷键手动触发格式化
      vim.keymap.set("n", "<leader>f", function()
        require("conform").format({ async = true })
        -- require("conform").format({ bufnr = 0 })
      end, { desc = "Format current buffer with Conform" })
    end,
  },
  }
