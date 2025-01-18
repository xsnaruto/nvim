return {
  {
    "folke/snacks.nvim",
    -- event = "VeryLazy",
    ---@type snacks.Config
    opts = {
      bigfile = { enabled = true },
      indent = { enabled = true },
      input = { enabled = true },
      notify = { enabled = false },
      notifier = { enabled = false },
      quickfile = { enabled = true },
      scroll = { enabled = true },
      lazygit = { enabled = true },
      dashboard = {
        enabled = true,
        -- your dashboard configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below

        formats = {
          key = function(item)
            return {
              { "[", hl = "special" },
              { item.key, hl = "key" },
              { "]", hl = "special" },
            }
          end,
        },
        sections = {
          {
            section = "terminal",
            -- cmd = "curl https://cows.rest/api/cowsay",
            cmd = "fortune -s | cowsay",
            hl = "header",
            padding = 1,
            indent = 8,
          },
          { title = "MRU", padding = 1 },
          { section = "recent_files", limit = 8, padding = 1 },
          -- { title = "MRU ", file = vim.fn.fnamemodify(".", ":~"), padding = 1 },
          -- { section = "recent_files", cwd = true, limit = 8, padding = 1 },
          { title = "Sessions", padding = 1 },
          { section = "projects", padding = 1 },
          { title = "Bookmarks", padding = 1 },
          { section = "keys" },
        },
      },
    },
  },
}
