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
