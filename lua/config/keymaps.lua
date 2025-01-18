-- 键位映射配置
local opts = { noremap = true, silent = true }

-- 设置 leader 键
vim.g.mapleader = " "

-- 设置文件类型
vim.keymap.set("n", "ft", ":set filetype=", opts)

-- 快速滚动
vim.keymap.set("", "K", "5k", opts)
vim.keymap.set("", "J", "5j", opts)
vim.keymap.set("", "H", "b", opts)
vim.keymap.set("", "L", "w", opts)

-- 保存和退出
vim.keymap.set("n", "W", ":w<CR>", { silent = false })
vim.keymap.set("n", "Q", ":q<CR>", opts)
vim.keymap.set("n", "FQ", ":q!<CR>", opts)

-- 系统剪贴板
vim.keymap.set("v", "Y", '"+y', opts)

-- 取消搜索高亮
vim.keymap.set("n", "<leader><CR>", ":nohlsearch<CR>", opts)

-- 查找替换
vim.keymap.set("n", "sg", ":%s//g<left><left>", { silent = false })

-- 窗口管理
vim.keymap.set("n", "<C-w>j", ":split<CR>", opts)
vim.keymap.set("n", "<C-w>l", ":vsplit<CR>", opts)
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)

-- 标签页管理
vim.keymap.set("n", "<C-t>", ":tabnew<CR>", opts)
vim.keymap.set("n", "<C-n>", ":tabnext<CR>", opts)
vim.keymap.set("n", "<C-p>", ":tabprevious<CR>", opts)
vim.keymap.set("n", "<C-w>", ":tabclose<CR>", opts)
