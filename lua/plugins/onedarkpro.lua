return {
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
    event = "VeryLazy",
    config = function()
      require("onedarkpro").setup({
        options = {
          transparency = true, -- 启用透明背景
          cursorline = true,
        },
      })
      -- 加载主题
      vim.cmd("colorscheme onedark")
    end,
  },
}
