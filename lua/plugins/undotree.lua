return {
  {
    "mbbill/undotree",
    event = "User IceLoad",
    cmd = "UndotreeToggle", -- 按需加载，使用 :UndotreeToggle 命令时加载插件
    keys = { { "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Toggle Undotree" } }, -- 快捷键绑定
    config = function()
      -- 自定义配置（可选）
      vim.g.undotree_WindowLayout = 3 -- 默认窗口布局：左侧显示树形图
      vim.g.undotree_SetFocusWhenToggle = 1 -- 打开时自动聚焦到 undotree 窗口
    end,
  },
}
