return {
  {
    "numToStr/Comment.nvim",
    event = "User IceLoad",
    config = function()
      require("Comment").setup()
    end,
  },
}
