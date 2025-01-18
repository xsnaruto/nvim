return {
  {
    "ibhagwan/fzf-lua",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- 可选依赖，用于文件图标
    config = function()
      require("fzf-lua").setup({
        winopts = {
          preview = {
            default = "bat", -- 使用 `bat` 作为默认预览
            layout = "flex", -- 预览窗口布局（vertical, horizontal, flex）
            -- vertical = "up:50%", -- 垂直布局占比
            -- horizontal = "right:50%", -- 水平布局占比
          },
        },
      })

      local fzf = require("fzf-lua")
      -- 设置键位映射
      vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "Find Files (fzf-lua)" })
      vim.keymap.set("n", "<leader>fg", fzf.live_grep, { desc = "Live Grep (fzf-lua)" })
      vim.keymap.set("n", "<leader>fb", fzf.buffers, { desc = "Find Buffers (fzf-lua)" })
      vim.keymap.set("n", "<leader>fh", fzf.help_tags, { desc = "Help Tags (fzf-lua)" })
    end,
  },

}
