if vim.fn.has("nvim-0.9.0") == 0 then
  vim.api.nvim_echo({
    { "LazyVim requires Neovim >= 0.9.0\n", "ErrorMsg" },
    { "Press any key to exit", "MoreMsg" },
  }, true, {})
  vim.fn.getchar()
  vim.cmd([[quit]])
  return {}
end

return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      bigfile = { enabled = true },
      indent = { enabled = true },
      input = { enabled = true },
      notifier = { enabled = true },
      quickfile = { enabled = true },
      scroll = { enabled = true },
      lazygit = { enabled = true },
      dashboard = {
        enabled = true,
        formats = {
          key = function(item)
            return {
              { "[", hl = "special" },
              { item.key, hl = "key" },
              { "]", hl = "special" },
            }
          end,
        },
        preset = {
          keys = {
            { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
            -- { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
            { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            -- {
            --   icon = " ",
            --   key = "c",
            --   desc = "Config",
            --   action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
            -- },
            { icon = " ", key = "s", desc = "Restore Session", section = "session" },
            { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          },
        },
        sections = {
          {
            section = "terminal",
            cmd = "curl https://cows.rest/api/cowsay",
            -- cmd = "fortune -s | cowsay",
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
          { section = "startup" },
        },
      },
    },
    config = function(_, opts)
      local notify = vim.notify
      require("snacks").setup(opts)
      -- HACK: restore vim.notify after snacks setup and let noice.nvim take over
      -- this is needed to have early notifications show up in noice history
      -- if LazyVim.has("noice.nvim") then
      vim.notify = notify
      -- end
    end,
  },
}
