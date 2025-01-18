return {
  {
    "rcarriga/nvim-notify", -- 插件名称
    config = function()
      -- 设置 nvim-notify 为全局通知函数
      vim.notify = require("notify")
      -- 基础配置
      require("notify").setup({
        -- 动画（可选：fade、slide、fade_in_slide_out等）
        -- stages = "fade_in_slide_out",
        -- timeout = 3000, -- 通知显示时间（毫秒）
        background_colour = "#000000", -- 背景颜色
        -- fps = 30, -- 刷新率
      })
    end,
  },
}
