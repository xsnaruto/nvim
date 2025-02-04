-- 刷新时间
vim.opt.updatetime = 100

-- 编码设置
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- 显示设置
vim.opt.list = true
vim.opt.listchars = {
	tab = "» ",
	trail = "·",
	nbsp = "␣",
}
vim.opt.syntax = "on"
vim.opt.background = "dark"
vim.opt.termguicolors = true

-- 搜索设置
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- ----------------------------------
-- 默认缩进，4 格空格，Tab 自动转空格
-- 部分语言会动态使用 2格空格执行缩进
-- 具体请参考 autocmds.lua 文件自定义
-- ----------------------------------
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- 显示设置
-- vim.opt.fillchars:append("eob: ")
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.conceallevel = 0

-- 备份和撤销设置
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("~/.config/nvim/undodir")
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
