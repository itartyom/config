if vim.loop.os_uname().sysname ~= "Darwin" then
  vim.g.clipboard = {
    name = 'osc52',
    copy = {
      -- только системный буфер (+); если нужен *, просто добавь '*' аналогично
      ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
    },
    paste = {
      ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
    },
  }
end
return {}
