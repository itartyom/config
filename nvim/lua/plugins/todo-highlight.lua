return {
  "echasnovski/mini.hipatterns",
  event = "BufReadPost",
  opts = function()
    return {
      highlighters = {
        todo_line = { pattern = "^%s*@todo.*$", group = "Todo" },
        todo_at = { pattern = "^%s*@todo", group = "Identifier" },
        todo_tag = { pattern = "#[%w_-]+", group = "Statement" },
        todo_meta = { pattern = ";%s*%w+=%S+", group = "Comment" },
      },
    }
  end,
}
