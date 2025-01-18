vim.uv = vim.uv or vim.loop

-- 加载基础设置
require("config.options")
require("config.keymaps")
require("config.autocmds")

-- 加载插件相关
-- require("plugins")
require("config.lazy")

-- 加载 LSP 配置
-- require("lsp")
