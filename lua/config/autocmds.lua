-- 自动命令和事件定义
-- 创建自定义事件 "IceLoad"
vim.api.nvim_create_autocmd("User", {
	pattern = "VeryLazy",
	callback = function()
		local function _trigger()
			vim.api.nvim_exec_autocmds("User", { pattern = "IceLoad" })
		end

		if vim.bo.filetype == "snacks_dashboard" then
			vim.api.nvim_create_autocmd("BufRead", {
				once = true,
				callback = _trigger,
			})
		else
			_trigger()
		end
	end,
})

local function augroup(name)
	return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- Auto create dir when saving a file, in case some intermediate directory does not exist
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	group = augroup("auto_create_dir"),
	callback = function(event)
		if event.match:match("^%w%w+:[\\/][\\/]") then
			return
		end
		local file = vim.uv.fs_realpath(event.match) or event.match
		vim.fn.mkdir(vim.fn.fnamemodify(file, ":p:h"), "p")
	end,
})

-- ----------------------------------
-- 针对部分语言动态调整缩进 2 空格
-- languages specific indent setting
-- ----------------------------------
vim.api.nvim_create_autocmd("FileType", {
	pattern = {
		"html",
		"css",
		"javascript",
		"typescript",
		"lua",
		"vue",
		"xml",
		"hbs",
		"yaml",
		"json",
		"ruby",
		"markdown",
	},
	callback = function()
		-- 如果检测到 `EditorConfig` ，不执行动态调整
		if vim.b.editorconfig then
			return
		end

		vim.opt_local.tabstop = 2
		vim.opt_local.softtabstop = 2
		vim.opt_local.shiftwidth = 2
		vim.opt_local.expandtab = true
		vim.opt_local.smarttab = true
	end,
})
